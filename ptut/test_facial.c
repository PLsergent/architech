#include <Python.h>
#include <stdio.h>

int main(){
  PyObject *retour, *module, *fonction, *arguments;
  char *resultat;

  Py_Initialize();

  PySys_SetPath(".");
  module = PyImport_ImportModule("test_f");

  fonction = PyObject_GetAttrString(module, "test");

  arguments = Py_BuildValue("(s)","PL face :");

  retour = PyEval_CallObject(fonction, arguments);
  
  PyArg_Parse(retour, "s", &resultat);
 
  printf("Resultat: %s\n", resultat);
  
  Py_Finalize();
  return 0;
}
