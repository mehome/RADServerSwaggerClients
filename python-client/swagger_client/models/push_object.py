# coding: utf-8

"""
    EMS API Documentation

    Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps  # noqa: E501

    OpenAPI spec version: 0.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from swagger_client.models.push_data_object import PushDataObject  # noqa: F401,E501
from swagger_client.models.push_where_object import PushWhereObject  # noqa: F401,E501


class PushObject(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'data': 'PushDataObject',
        'channels': 'list[str]',
        'where': 'PushWhereObject'
    }

    attribute_map = {
        'data': 'data',
        'channels': 'channels',
        'where': 'where'
    }

    def __init__(self, data=None, channels=None, where=None):  # noqa: E501
        """PushObject - a model defined in Swagger"""  # noqa: E501

        self._data = None
        self._channels = None
        self._where = None
        self.discriminator = None

        self.data = data
        if channels is not None:
            self.channels = channels
        self.where = where

    @property
    def data(self):
        """Gets the data of this PushObject.  # noqa: E501


        :return: The data of this PushObject.  # noqa: E501
        :rtype: PushDataObject
        """
        return self._data

    @data.setter
    def data(self, data):
        """Sets the data of this PushObject.


        :param data: The data of this PushObject.  # noqa: E501
        :type: PushDataObject
        """
        if data is None:
            raise ValueError("Invalid value for `data`, must not be `None`")  # noqa: E501

        self._data = data

    @property
    def channels(self):
        """Gets the channels of this PushObject.  # noqa: E501


        :return: The channels of this PushObject.  # noqa: E501
        :rtype: list[str]
        """
        return self._channels

    @channels.setter
    def channels(self, channels):
        """Sets the channels of this PushObject.


        :param channels: The channels of this PushObject.  # noqa: E501
        :type: list[str]
        """

        self._channels = channels

    @property
    def where(self):
        """Gets the where of this PushObject.  # noqa: E501


        :return: The where of this PushObject.  # noqa: E501
        :rtype: PushWhereObject
        """
        return self._where

    @where.setter
    def where(self, where):
        """Sets the where of this PushObject.


        :param where: The where of this PushObject.  # noqa: E501
        :type: PushWhereObject
        """
        if where is None:
            raise ValueError("Invalid value for `where`, must not be `None`")  # noqa: E501

        self._where = where

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(PushObject, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, PushObject):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
