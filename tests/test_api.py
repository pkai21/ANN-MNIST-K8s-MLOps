from fastapi.testclient import TestClient

from src.api import app


client = TestClient(app)


def test_health():
    response = client.get("/health")

    assert response.status_code == 200
    assert response.json()["status"] == "healthy"


def test_predict():
    pixels = [0.0] * 784

    response = client.post(
        "/predict",
        json={"pixels": pixels}
    )

    assert response.status_code == 200
    assert "prediction" in response.json()
    assert "confidence" in response.json()