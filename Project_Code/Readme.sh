# Brain Tumor Classification Project

This project implements and compares three deep learning architectures (Simple CNN, YOLO-inspired CNN, and ResNet) for classifying brain tumors into four categories: glioma, meningioma, pituitary, and no tumor.

##  Setup & Installation

1. **Install Dependencies**  
   Ensure you have Python installed, then run:
 
pip install -r requirement.txt

2. **Download the Dataset**  
This project uses the Brain Tumor MRI Dataset (commonly found on Kaggle).
- **Download Link:** [Brain Tumor MRI Dataset](https://www.kaggle.com/datasets/masoudnickparvar/brain-tumor-mri-dataset) (or similar)
- **Extraction:** You must extract the dataset so that it creates an `archive` folder in your project root.


##  How to Run

1. Open your terminal/command prompt in the `project_root` folder.
2. Launch Jupyter Notebook:
3. Open any of the notebooks (`SimplCNN.ipynb`, `yolo.ipynb`, or `ResNet.ipynb`) and click **Run All**.

##  Outputs

After running the notebooks, the following files will be generated in the same directory:

**Model Weights (Saved Models):**
- `simple_cnn_model.pth`
- `simple_yolo_brain_tumor_model.pth`
- `resnet_brain_tumor_model.pth`

**Visualizations:**
- **Training History:** (e.g., `yolo_training_history.png`) - Shows Loss and Accuracy curves.
- **Confusion Matrix:** (e.g., `yolo_confusion_matrix.png`) - Heatmap of prediction accuracy.
- **Inference Samples:** (`inference_samples.png`) - Grid of random test images with True vs Predicted labels.
