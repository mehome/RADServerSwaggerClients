# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Api.Installations do
  @moduledoc """
  API calls for all endpoints tagged `Installations`.
  """

  alias EMSAPIDocumentation.Connection
  import EMSAPIDocumentation.RequestBuilder


  @doc """
  Add Installation
   |      Used to add a new &#x60;Installation&#x60; object to the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - body (InstallationAddObject): Object to sign up a new EMS User in the EMS Server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.InstallationAddedObject{}} on success
  {:error, info} on failure
  """
  @spec add_installation(Tesla.Env.client, EMSAPIDocumentation.Model.InstallationAddObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.InstallationAddedObject.t} | {:error, Tesla.Env.t}
  def add_installation(connection, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/installations")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.InstallationAddedObject{})
  end

  @doc """
  Delete Installation
   |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A Installation ID
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_installation(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_installation(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/installations/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get Installation Channels
   |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, [%ChannelName{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_channels(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.ChannelName.t)} | {:error, Tesla.Env.t}
  def get_channels(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/installations/channels")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.ChannelName{}])
  end

  @doc """
  Get Installation
   |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A Installation ID
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.InstallationObject{}} on success
  {:error, info} on failure
  """
  @spec get_installation(Tesla.Env.client, String.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.InstallationObject.t} | {:error, Tesla.Env.t}
  def get_installation(connection, id, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/installations/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.InstallationObject{})
  end

  @doc """
  Get Fields
   |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, [%FieldInstallationObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_installation_fields(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.FieldInstallationObject.t)} | {:error, Tesla.Env.t}
  def get_installation_fields(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/installations/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.FieldInstallationObject{}])
  end

  @doc """
  Get Installations
   |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 
    - :skip (float()): users skipped
    - :limit (float()): maximum number of results to return
    - :order (float()): order ascending or descending (asc, desc)
    - :where (String.t): filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

  ## Returns

  {:ok, [%InstallationObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_installations(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.InstallationObject.t)} | {:error, Tesla.Env.t}
  def get_installations(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers,
      :"skip" => :query,
      :"limit" => :query,
      :"order" => :query,
      :"where" => :query
    }
    %{}
    |> method(:get)
    |> url("/installations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.InstallationObject{}])
  end

  @doc """
  Update Installation
   |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - id (String.t): A Installation ID
  - body (UpdateInstallationObject): Installation fields to update
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UpdatedInstallationObject{}} on success
  {:error, info} on failure
  """
  @spec update_installation(Tesla.Env.client, String.t, EMSAPIDocumentation.Model.UpdateInstallationObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UpdatedInstallationObject.t} | {:error, Tesla.Env.t}
  def update_installation(connection, id, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:put)
    |> url("/installations/#{id}")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UpdatedInstallationObject{})
  end
end
