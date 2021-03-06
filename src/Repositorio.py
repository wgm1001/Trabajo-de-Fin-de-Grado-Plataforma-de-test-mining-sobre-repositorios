# -*- coding: utf-8 -*-
"""
@author: Willow Maui García Moreno
Clase Proyecto
Clase dedicada a almacenar los distintos valores de un proyecto y hacer
las transformaciones a JSON si se pide
"""

class Repositorio:  
    def __init__(self,pid=None,name=None,description=None,issues=None,labels=None):
        self.pid=pid
        self.name=name
        self.description=description
        self.issues=issues
        self.labels=labels
    
    def makeJSONList(self):
        for i in self.issues:
            i.makeJSONList()
        
    def makeListJSON(self):
        for i in self.issues:
            i.makeListJSON()