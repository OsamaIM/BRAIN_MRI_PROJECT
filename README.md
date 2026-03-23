<div align="center">

<img src="project logo.jpg" alt="BrainOnco-100K Logo" width="100%" style="border-radius: 12px; margin-bottom: 20px;">

<h3 align="center">Efficient Deep Learning for Brain Tumor Classification</h3>
<p align="center"><i>"Bringing Medical AI to the Edge"</i></p>

<p align="center">
  <img src="https://img.shields.io/badge/STATUS-ACTIVE_DEVELOPMENT-3b82f6?style=for-the-badge&labelColor=111111" alt="Status" />
  <img src="https://img.shields.io/badge/FOCUS-EFFICIENT_AI-10b981?style=for-the-badge&labelColor=111111" alt="Focus" />
  <img src="https://img.shields.io/badge/DOMAIN-NEURO--ONCOLOGY-8b5cf6?style=for-the-badge&labelColor=111111" alt="Domain" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10+-111111?style=flat-square&logo=python&logoColor=3776AB" alt="Python" />
  <img src="https://img.shields.io/badge/PyTorch-Core-111111?style=flat-square&logo=pytorch&logoColor=EE4C2C" alt="PyTorch" />
  <img src="https://img.shields.io/badge/ONNX-Web_Runtime-111111?style=flat-square&logo=onnx&logoColor=005CED" alt="ONNX" />
  <img src="https://img.shields.io/badge/Next.js-React-111111?style=flat-square&logo=next.js&logoColor=white" alt="Next.js" />
  <img src="https://img.shields.io/badge/License-MIT-111111?style=flat-square&logo=opensourceinitiative&logoColor=white" alt="License" />
</p>

</div>

<br/>

> [!NOTE]  
> This project demonstrates how ultra-lightweight architectures can rival massive State-of-the-Art (SOTA) models. The **core YOLO-inspired classifier is trained and tested**, achieving 95.04% accuracy with only ~107k parameters. Client-side WebAssembly integration is currently live!
> 
> **Live Web Demo:** [https://osama-portfolio-two.vercel.app/]

<br/>

## ✨ What is BrainOnco-100K?

Brain tumor diagnosis relies heavily on MRI interpretation, a process that is labor-intensive and prone to human variability. While modern Deep Learning models achieve high accuracy, their massive computational requirements often render them inaccessible in resource-limited clinical settings. 

**BrainOnco-100K** is a custom, lightweight classification engine built to solve this. Contrasting with heavy SOTA models (like ResNet or VGG-16), this architecture was engineered to maximize diagnostic performance using minimal parameters. The result is a highly accurate, micro-footprint model that runs entirely on standard CPUs and edge devices, completely democratizing AI-assisted healthcare.

<br/>

## 🎯 Architectural Mechanics

| Feature Refinement 🔄 | Gradient Stability ⚡ | Optimization Engine ⚙️ |
| :--- | :--- | :--- |
| **Bottleneck Convolutions** | **LeakyReLU Activations** | **Adam & CrossEntropy** |
| Integrates 1x1 convolutions as bottlenecks to reduce and expand channel depth before 3x3 operations, slashing computational bloat. | Replaced standard ReLU to avoid the "dying ReLU" problem, maintaining a non-zero gradient for negative inputs during training. | Optimized using Adam (learning rate = 0.001) and `nn.CrossEntropyLoss` for robust multi-class probability. |

<br/>

## 📊 Performance Benchmark

The model was trained and evaluated on the comprehensive 7,023-image Kaggle Brain Tumor MRI Dataset, which covers four classes: **Glioma, Meningioma, Pituitary, and No Tumor**.

| Architecture Model | Test Accuracy (%) | F1-Score (Weighted) | Parameter Count |
| :--- | :---: | :---: | :---: |
| 🏆 **BrainOnco-100K (YOLO-Inspired)** | **95.04%** | **0.9508** | **106,980** |
| 📉 SimpleCNN (Baseline) | 89.63% | 0.8977 | 101,764 |
| ❌ Simple ResNet | 88.41% | 0.8849 | 703,844 |

**Key Insight:** Simply adding depth and skip-connections without optimization (ResNet) led to instability and parameter bloat. Our bottleneck architecture achieved superior accuracy with an ultra-lightweight footprint.

<br/>

## 🛠️ Technology Stack

| Layer | Technology Used | Description |
| :--- | :--- | :--- |
| **Deep Learning** | PyTorch | Core training loop, model definition, and tensor processing. |
| **Data Pipeline** | Torchvision | ImageNet normalization and 128x128 dynamic resizing. |
| **Edge Export** | ONNX | Conversion of `.pth` weights to `.onnx` for hardware-agnostic inference. |
| **Web Frontend** | Next.js / React | Client-side user interface for dragging and dropping MRI scans. |
| **Browser Runtime** | `onnxruntime-web` | Executes the model natively in the browser via WebAssembly/WebGL. |

<br/>

## 📁 Repository Structure

| Folder / File | Purpose | Status |
| :--- | :--- | :--- |
| `models/` | ⭐ **Core architectures** (`SimpleCNN.py`, `SimpleResNet.py`, `YOLO.py`) | Active |
| `notebooks/` | Jupyter notebooks with data pipelines and matplotlib loss graphs | Reference |
| `web_integration/` | Next.js component (`MRIAnalyzer.tsx`) for client-side inference | Active |
| `best_yolo_model.pth` | Saved PyTorch weights achieving 95.04% accuracy | Complete |
| `brain_tumor_yolo.onnx`| Final exported ONNX model optimized for web | Complete |

<br/>

## 👥 Development Team

This research and engineering project was developed by:

| Name | Institution | GitHub |
| :--- | :--- | :--- |
| **Osama Ibn Mahfuz** | Shanghai University of Engineering Science | [![GitHub](https://img.shields.io/badge/GitHub-OsamaIM-111111?style=flat-square&logo=github&logoColor=white)](https://github.com/OsamaIM) |

<br/>

## 🚀 Quick Start & Usage

You can utilize BrainOnco-100K in two different ways depending on your environment: standard Python/PyTorch inference, or Edge/Web integration.

### Method 1: Python / PyTorch Inference (Local Testing)

```bash
# 1. Clone the repository
git clone [https://github.com/OsamaIM/BrainOnco-100K.git](https://github.com/OsamaIM/BrainOnco-100K.git)
cd BrainOnco-100K

# 2. Install dependencies
pip install torch torchvision numpy Pillow

# 3. Run inference on a sample MRI image
python predict.py --image path/to/sample_mri.jpg --weights best_yolo_model.pth


