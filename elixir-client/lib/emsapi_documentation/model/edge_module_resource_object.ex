# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.EdgeModuleResourceObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"resourcename",
    :"modulename",
    :"moduleid",
    :"_meta"
  ]

  @type t :: %__MODULE__{
    :"resourcename" => String.t,
    :"modulename" => String.t,
    :"moduleid" => String.t,
    :"_meta" => MetaEdgeModuleObject
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.EdgeModuleResourceObject do
  import EMSAPIDocumentation.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"_meta", :struct, EMSAPIDocumentation.Model.MetaEdgeModuleObject, options)
  end
end

