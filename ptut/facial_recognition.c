#include <Python.h>

int main(){
  PyObject *retour, *module, *fonction, *arguments;
  char *resultat;

  Py_Initialize();

  PySys_SetPath(".");
  module = PyImport_ImportModule("facial_recognition");

  fonction = PyObject_GetAttrString(module, "is_recognized");

  arguments = Py_BuildValue("(s)","./CV.jpg");

  retour = PyEval_CallObject(fonction, arguments);

  Py_Finalize();
  return 0;
}
