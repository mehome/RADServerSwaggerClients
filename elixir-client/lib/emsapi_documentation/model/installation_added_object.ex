# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.InstallationAddedObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_id"
  ]

  @type t :: %__MODULE__{
    :"_id" => String.t
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.InstallationAddedObject do
  def decode(value, _options) do
    value
  end
end

