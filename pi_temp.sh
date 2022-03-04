temperature=`python3 /usr/bin/mi-temp/main.py`
curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer ${api_key}" https://gw.machinist.iij.jp/endpoint -d @- << EOS
{
  "agent": "xiaomi_temperature",
  "metrics": [
    {
      "name": "temperature",
      "namespace": "Environment Sensor",
      "data_point": {
        "value": ${temperature}
      }
    }
  ]
}
EOS
echo ${temperature}
