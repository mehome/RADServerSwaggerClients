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
class EDGE_MODULE_ADDED_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    var_id: detachable STRING_32 
      
    modulename: detachable STRING_32 
      

feature -- Change Element  
 
    set_var_id (a_name: like var_id)
        -- Set 'var_id' with 'a_name'.
      do
        var_id := a_name
      ensure
        var_id_set: var_id = a_name		
      end

    set_modulename (a_name: like modulename)
        -- Set 'modulename' with 'a_name'.
      do
        modulename := a_name
      ensure
        modulename_set: modulename = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass EDGE_MODULE_ADDED_OBJECT%N")
        if attached var_id as l_var_id then
          Result.append ("%Nvar_id:")
          Result.append (l_var_id.out)
          Result.append ("%N")    
        end  
        if attached modulename as l_modulename then
          Result.append ("%Nmodulename:")
          Result.append (l_modulename.out)
          Result.append ("%N")    
        end  
      end
end


