note
 description:"[
		EMS API Documentation
 		Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
  		OpenAPI spec version: 0.0.0
 	    

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"
class INSTALLATION_OBJECT 

inherit

  ANY
      redefine
          out 
      select
          out  
      end

  STRING_TABLE [STRING_32] 
      rename
          out as out_,
          is_equal as is_equal_,
          copy as copy_
      select
          is_equal_,
          copy_     
      end   

feature --Access

    var_id: detachable STRING_32 
      
    device_token: detachable STRING_32 
      
    device_type: detachable STRING_32 
      
    var_meta: detachable _META_INSTALLATION_OBJECT 
      
    channels: detachable LIST [STRING_32] 
      

feature -- Change Element  
 
    set_var_id (a_name: like var_id)
        -- Set 'var_id' with 'a_name'.
      do
        var_id := a_name
      ensure
        var_id_set: var_id = a_name		
      end

    set_device_token (a_name: like device_token)
        -- Set 'device_token' with 'a_name'.
      do
        device_token := a_name
      ensure
        device_token_set: device_token = a_name		
      end

    set_device_type (a_name: like device_type)
        -- Set 'device_type' with 'a_name'.
      do
        device_type := a_name
      ensure
        device_type_set: device_type = a_name		
      end

    set_var_meta (a_name: like var_meta)
        -- Set 'var_meta' with 'a_name'.
      do
        var_meta := a_name
      ensure
        var_meta_set: var_meta = a_name		
      end

    set_channels (a_name: like channels)
        -- Set 'channels' with 'a_name'.
      do
        channels := a_name
      ensure
        channels_set: channels = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append(out_)
        Result.append("%Nclass INSTALLATION_OBJECT%N")
        if attached var_id as l_var_id then
          Result.append ("%Nvar_id:")
          Result.append (l_var_id.out)
          Result.append ("%N")    
        end  
        if attached device_token as l_device_token then
          Result.append ("%Ndevice_token:")
          Result.append (l_device_token.out)
          Result.append ("%N")    
        end  
        if attached device_type as l_device_type then
          Result.append ("%Ndevice_type:")
          Result.append (l_device_type.out)
          Result.append ("%N")    
        end  
        if attached var_meta as l_var_meta then
          Result.append ("%Nvar_meta:")
          Result.append (l_var_meta.out)
          Result.append ("%N")    
        end  
        if attached channels as l_channels then
          across l_channels as ic loop
            Result.append ("%N channels:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end


