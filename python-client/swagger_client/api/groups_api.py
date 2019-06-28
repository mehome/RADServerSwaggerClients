# coding: utf-8

"""
    EMS API Documentation

    Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps  # noqa: E501

    OpenAPI spec version: 0.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class GroupsApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def add_group(self, body, **kwargs):  # noqa: E501
        """Add Group  # noqa: E501

         |      Used to add a new `Group` object to the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.add_group(body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param GroupAddObject body: Object to sign up a new EMS User in the EMS Server (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.add_group_with_http_info(body, **kwargs)  # noqa: E501
        else:
            (data) = self.add_group_with_http_info(body, **kwargs)  # noqa: E501
            return data

    def add_group_with_http_info(self, body, **kwargs):  # noqa: E501
        """Add Group  # noqa: E501

         |      Used to add a new `Group` object to the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.add_group_with_http_info(body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param GroupAddObject body: Object to sign up a new EMS User in the EMS Server (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['body', 'x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method add_group" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'body' is set
        if ('body' not in params or
                params['body'] is None):
            raise ValueError("Missing the required parameter `body` when calling `add_group`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        if 'body' in params:
            body_params = params['body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def delete_group(self, item, **kwargs):  # noqa: E501
        """Delete Group  # noqa: E501

         |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_group(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.delete_group_with_http_info(item, **kwargs)  # noqa: E501
        else:
            (data) = self.delete_group_with_http_info(item, **kwargs)  # noqa: E501
            return data

    def delete_group_with_http_info(self, item, **kwargs):  # noqa: E501
        """Delete Group  # noqa: E501

         |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_group_with_http_info(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['item', 'x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_group" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'item' is set
        if ('item' not in params or
                params['item'] is None):
            raise ValueError("Missing the required parameter `item` when calling `delete_group`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'item' in params:
            path_params['item'] = params['item']  # noqa: E501

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups/{item}', 'DELETE',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_group(self, item, **kwargs):  # noqa: E501
        """Get Group  # noqa: E501

         |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_group(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: GroupObject
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_group_with_http_info(item, **kwargs)  # noqa: E501
        else:
            (data) = self.get_group_with_http_info(item, **kwargs)  # noqa: E501
            return data

    def get_group_with_http_info(self, item, **kwargs):  # noqa: E501
        """Get Group  # noqa: E501

         |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_group_with_http_info(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: GroupObject
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['item', 'x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_group" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'item' is set
        if ('item' not in params or
                params['item'] is None):
            raise ValueError("Missing the required parameter `item` when calling `get_group`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'item' in params:
            path_params['item'] = params['item']  # noqa: E501

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups/{item}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GroupObject',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_group_fields(self, **kwargs):  # noqa: E501
        """Get Fields  # noqa: E501

         |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_group_fields(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: list[FieldGroupObject]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_group_fields_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_group_fields_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_group_fields_with_http_info(self, **kwargs):  # noqa: E501
        """Get Fields  # noqa: E501

         |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_group_fields_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: list[FieldGroupObject]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_group_fields" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups/fields', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[FieldGroupObject]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_groups(self, **kwargs):  # noqa: E501
        """Get Groups  # noqa: E501

         |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_groups(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :param float skip: users skipped
        :param float limit: maximum number of results to return
        :param float order: order ascending or descending (asc, desc)
        :param str where: filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
        :return: list[GroupObject]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_groups_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_groups_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_groups_with_http_info(self, **kwargs):  # noqa: E501
        """Get Groups  # noqa: E501

         |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_groups_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :param float skip: users skipped
        :param float limit: maximum number of results to return
        :param float order: order ascending or descending (asc, desc)
        :param str where: filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
        :return: list[GroupObject]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret', 'skip', 'limit', 'order', 'where']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_groups" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'skip' in params:
            query_params.append(('skip', params['skip']))  # noqa: E501
        if 'limit' in params:
            query_params.append(('limit', params['limit']))  # noqa: E501
        if 'order' in params:
            query_params.append(('order', params['order']))  # noqa: E501
        if 'where' in params:
            query_params.append(('where', params['where']))  # noqa: E501

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[GroupObject]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def update_group(self, item, body, **kwargs):  # noqa: E501
        """Update Group  # noqa: E501

         |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_group(item, body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param UpdateGroupObject body: Object to sign up a new EMS User in the EMS Server (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: UpdatedGroupObject
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_group_with_http_info(item, body, **kwargs)  # noqa: E501
        else:
            (data) = self.update_group_with_http_info(item, body, **kwargs)  # noqa: E501
            return data

    def update_group_with_http_info(self, item, body, **kwargs):  # noqa: E501
        """Update Group  # noqa: E501

         |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_group_with_http_info(item, body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: A group name (required)
        :param UpdateGroupObject body: Object to sign up a new EMS User in the EMS Server (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: UpdatedGroupObject
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['item', 'body', 'x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_group" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'item' is set
        if ('item' not in params or
                params['item'] is None):
            raise ValueError("Missing the required parameter `item` when calling `update_group`")  # noqa: E501
        # verify the required parameter 'body' is set
        if ('body' not in params or
                params['body'] is None):
            raise ValueError("Missing the required parameter `body` when calling `update_group`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'item' in params:
            path_params['item'] = params['item']  # noqa: E501

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        if 'body' in params:
            body_params = params['body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/groups/{item}', 'PUT',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='UpdatedGroupObject',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
