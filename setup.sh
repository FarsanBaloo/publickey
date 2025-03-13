# Initialize Conda
conda init

# Check if virtualenv is installed
if ! command -v virtualenv &> /dev/null; then
    echo "virtualenv could not be found, installing..."
    pip install --upgrade pip  # Update pip before installing virtualenv
    pip install virtualenv  # Install virtualenv if not available
fi

# Create a virtual environment using virtualenv
virtualenv ~/pytorchenv

# Activate the virtual environment
source ~/pytorchenv/bin/activate

# Update pip in the virtual environment
pip install --upgrade pip

# Install packages from requirements.txt
pip install -r /kaggle/working/requirements.txt

# Register the kernel
python -m ipykernel install --user --name=pytorchenv --display-name "Python (pytorchenv)"

# Install Jupyter and ipykernel in the virtual environment
pip install jupyter ipykernel