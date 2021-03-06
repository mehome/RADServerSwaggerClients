/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package io.swagger.api;

import io.swagger.model.EdgeModuleAddObject;
import io.swagger.model.EdgeModuleAddedObject;
import io.swagger.model.EdgeModuleObject;
import io.swagger.model.EdgeModuleResourceAddObject;
import io.swagger.model.EdgeModuleResourceAddedObject;
import io.swagger.model.EdgeModuleResourceObject;
import io.swagger.model.EdgeModuleResourceUpdateObject;
import io.swagger.model.EdgeModuleResourceUpdatedObject;
import io.swagger.model.EdgeModuleUpdateObject;
import io.swagger.model.EdgeModuleUpdatedObject;
import io.swagger.model.FieldsEdgeModuleObject;
import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.*;

import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.client.JAXRSClientFactory;
import org.apache.cxf.jaxrs.client.ClientConfiguration;
import org.apache.cxf.jaxrs.client.WebClient;


import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;




/**
 * EMS API Documentation
 *
 * <p>Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * API tests for EdgeModulesApi 
 */
public class EdgeModulesApiTest {


    private EdgeModulesApi api;
    
    @Before
    public void setup() {
        JacksonJsonProvider provider = new JacksonJsonProvider();
        List providers = new ArrayList();
        providers.add(provider);
        
        api = JAXRSClientFactory.create("http://localhost:8080", EdgeModulesApi.class, providers);
        org.apache.cxf.jaxrs.client.Client client = WebClient.client(api);
        
        ClientConfiguration config = WebClient.getConfig(client); 
    }

    
    /**
     * Get Module
     *
     *  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getModuleTest() {
        String mname = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleObject response = api.getModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get EdgeModule Resource
     *
     *  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getModuleResourceTest() {
        String mname = null;
        String name = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleResourceObject response = api.getModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get EdgeModule Resources
     *
     *  |      Used to retrieve all data from the resources of an EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getModuleResourcesTest() {
        String mname = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //List<EdgeModuleResourceObject> response = api.getModuleResources(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get Module
     *
     *  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getModulesTest() {
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //List<EdgeModuleObject> response = api.getModules(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get Fields
     *
     *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getModulesFieldsTest() {
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //FieldsEdgeModuleObject response = api.getModulesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get EdgeModules Resources
     *
     *  |      Used to retrieve all data from the resources of all EdgeModules.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResourcesTest() {
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //List<EdgeModuleResourceObject> response = api.getResources(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Get Resource Fields
     *
     *  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResourcesFieldsTest() {
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //FieldsEdgeModuleObject response = api.getResourcesFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Add Module
     *
     *  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void registerModuleTest() {
        EdgeModuleAddObject body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleAddedObject response = api.registerModule(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Add Module Resource
     *
     *  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void registerModuleResourceTest() {
        String mname = null;
        EdgeModuleResourceAddObject body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleResourceAddedObject response = api.registerModuleResource(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Delete Module
     *
     *  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void unregisterModuleTest() {
        String mname = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.unregisterModule(mname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Delete Module Resource
     *
     *  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void unregisterModuleResourceTest() {
        String mname = null;
        String name = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.unregisterModuleResource(mname, name, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Update Module
     *
     *  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateModuleTest() {
        String mname = null;
        EdgeModuleUpdateObject body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleUpdatedObject response = api.updateModule(mname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * Update Module Resource
     *
     *  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateModuleResourceTest() {
        String mname = null;
        String name = null;
        EdgeModuleResourceUpdateObject body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //EdgeModuleResourceUpdatedObject response = api.updateModuleResource(mname, name, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
}
