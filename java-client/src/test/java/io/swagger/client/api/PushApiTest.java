/*
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiException;
import io.swagger.client.model.PushObject;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for PushApi
 */
@Ignore
public class PushApiTest {

    private final PushApi api = new PushApi();

    
    /**
     * Send Push
     *
     * Used to send a push notification message to a registered device
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void sendTest() throws ApiException {
        PushObject body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        api.send(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);

        // TODO: test validations
    }
    
}
