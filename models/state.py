#!/usr/bin/python3
from models.base_model import BaseModel, Base
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class State(BaseModel, Base):
    """The State class, which inherits from BaseModel"""
    __tablename__ = 'states'
    name = Column(String(128), nullable=False)
    if models.storage_type == "db":
        cities = relationship('City', backref='state', cascade='delete')
    else:
        @property
        def cities(self):
            """returns the list of City instances with state_id equals to the current State.id"""
            from models import storage
            from models.city import City
            cities_list = []
            for city in storage.all(City).values():
                if city.state_id == self.id:
                    cities_list.append(city)
            return cities_list
