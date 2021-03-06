/*
 * EMS API Documentation
 * Enterprise Mobility Services API\r\n\r\n  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)\r\n\r\n  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)\r\n\r\n  TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

public class SwagApiDocApi {
    SwagClient client;

    public SwagApiDocApi(SwagClient client) {
        this.client = client;
    }

    public SwagApiDocApi() {
        this.client = new SwagClient();
    }

    public SwagClient getClient() {
        return this.client;
    }

    /**
     * Get API EndPoints
     *  |\r\n    Used to retrieve all the API EndPoints.
     * @param xEmbarcaderoApplicationId  (optional)
     * @param xEmbarcaderoAppSecret  (optional)
     * @param xEmbarcaderoMasterSecret  (optional)
     * @throws Swagger.ApiException if fails to make API call
     */
    public void aPI(Map<String, Object> params) {
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        client.invoke(
            'GET', '/api', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'X-Embarcadero-Application-Id' => (String) params.get('xEmbarcaderoApplicationId'),
                'X-Embarcadero-App-Secret' => (String) params.get('xEmbarcaderoAppSecret'),
                'X-Embarcadero-Master-Secret' => (String) params.get('xEmbarcaderoMasterSecret')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String>(),
            null
        );
    }
    /**
     * Get JSON
     * Get API in JSON format
     * @param xEmbarcaderoApplicationId  (optional)
     * @param xEmbarcaderoAppSecret  (optional)
     * @param xEmbarcaderoMasterSecret  (optional)
     * @throws Swagger.ApiException if fails to make API call
     */
    public void getAPIJSONFormat(Map<String, Object> params) {
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        client.invoke(
            'GET', '/api/apidoc.json', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'X-Embarcadero-Application-Id' => (String) params.get('xEmbarcaderoApplicationId'),
                'X-Embarcadero-App-Secret' => (String) params.get('xEmbarcaderoAppSecret'),
                'X-Embarcadero-Master-Secret' => (String) params.get('xEmbarcaderoMasterSecret')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String>(),
            null
        );
    }
    /**
     * Get YAML
     * Get API in YAML format
     * @param xEmbarcaderoApplicationId  (optional)
     * @param xEmbarcaderoAppSecret  (optional)
     * @param xEmbarcaderoMasterSecret  (optional)
     * @throws Swagger.ApiException if fails to make API call
     */
    public void getAPIYAMLFormat(Map<String, Object> params) {
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        client.invoke(
            'GET', '/api/apidoc.yaml', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>{
                'X-Embarcadero-Application-Id' => (String) params.get('xEmbarcaderoApplicationId'),
                'X-Embarcadero-App-Secret' => (String) params.get('xEmbarcaderoAppSecret'),
                'X-Embarcadero-Master-Secret' => (String) params.get('xEmbarcaderoMasterSecret')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String>(),
            null
        );
    }
    /**
     * Get API EndPoint
     *  |\r\n    Used to retrieve an EndPoint for the API EndPoints.
     * @param item Path Segment to an EndPoint (required)
     * @param xEmbarcaderoApplicationId  (optional)
     * @param xEmbarcaderoAppSecret  (optional)
     * @param xEmbarcaderoMasterSecret  (optional)
     * @throws Swagger.ApiException if fails to make API call
     */
    public void getAPIYAMLFormatEndPoint(Map<String, Object> params) {
        client.assertNotNull(params.get('item'), 'item');
        List<Swagger.Param> query = new List<Swagger.Param>();
        List<Swagger.Param> form = new List<Swagger.Param>();

        client.invoke(
            'GET', '/api/{item}/apidoc.yaml', '',
            query, form,
            new Map<String, Object>{
                'item' => (String) params.get('item')
            },
            new Map<String, Object>{
                'X-Embarcadero-Application-Id' => (String) params.get('xEmbarcaderoApplicationId'),
                'X-Embarcadero-App-Secret' => (String) params.get('xEmbarcaderoAppSecret'),
                'X-Embarcadero-Master-Secret' => (String) params.get('xEmbarcaderoMasterSecret')
            },
            new List<String>{ 'application/json' },
            new List<String>{ 'application/json' },
            new List<String>(),
            null
        );
    }
}
