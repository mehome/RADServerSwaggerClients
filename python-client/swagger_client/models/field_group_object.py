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

from swagger_client.models.field_object_fields import FieldObjectFields  # noqa: F401,E501


class FieldGroupObject(object):
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
        'name': 'str',
        'fields': 'list[FieldObjectFields]',
        'custom': 'bool'
    }

    attribute_map = {
        'name': 'name',
        'fields': 'fields',
        'custom': 'custom'
    }

    def __init__(self, name=None, fields=None, custom=None):  # noqa: E501
        """FieldGroupObject - a model defined in Swagger"""  # noqa: E501

        self._name = None
        self._fields = None
        self._custom = None
        self.discriminator = None

        self.name = name
        if fields is not None:
            self.fields = fields
        if custom is not None:
            self.custom = custom

    @property
    def name(self):
        """Gets the name of this FieldGroupObject.  # noqa: E501


        :return: The name of this FieldGroupObject.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this FieldGroupObject.


        :param name: The name of this FieldGroupObject.  # noqa: E501
        :type: str
        """
        if name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def fields(self):
        """Gets the fields of this FieldGroupObject.  # noqa: E501


        :return: The fields of this FieldGroupObject.  # noqa: E501
        :rtype: list[FieldObjectFields]
        """
        return self._fields

    @fields.setter
    def fields(self, fields):
        """Sets the fields of this FieldGroupObject.


        :param fields: The fields of this FieldGroupObject.  # noqa: E501
        :type: list[FieldObjectFields]
        """

        self._fields = fields

    @property
    def custom(self):
        """Gets the custom of this FieldGroupObject.  # noqa: E501


        :return: The custom of this FieldGroupObject.  # noqa: E501
        :rtype: bool
        """
        return self._custom

    @custom.setter
    def custom(self, custom):
        """Sets the custom of this FieldGroupObject.


        :param custom: The custom of this FieldGroupObject.  # noqa: E501
        :type: bool
        """

        self._custom = custom

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
        if issubclass(FieldGroupObject, dict):
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
        if not isinstance(other, FieldGroupObject):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
