# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.FieldInstallationObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"fields",
    :"custom"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"fields" => [FieldObjectFields],
    :"custom" => boolean()
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.FieldInstallationObject do
  import EMSAPIDocumentation.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"fields", :list, EMSAPIDocumentation.Model.FieldObjectFields, options)
  end
end

