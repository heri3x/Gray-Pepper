import sys
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *

class Form(QWidget):
    def __init__(self, parent=None):
        super(Form, self).__init__(parent)

        self.button1 = QPushButton("Hello")
        self.button1.clicked.connect(self.button1_clicked)
        mainLayout = QVBoxLayout()
        mainLayout.addWidget(self.button1)
        self.setLayout(mainLayout)
        self.setWindowTitle("test_pyqt5")

    def button1_clicked(self):
        QMessageBox.information(self, "Test", "Hello!")


app = QApplication(sys.argv)
form = Form()
form.show()
app.exec_()
