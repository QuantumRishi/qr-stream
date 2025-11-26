# QR Stream Service

[![Build and Push to GHCR](https://github.com/QuantumRishi/qr-stream/actions/workflows/build.yml/badge.svg)](https://github.com/QuantumRishi/qr-stream/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js Version](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen)](https://nodejs.org/)

A high-performance streaming service built for the Quantum Rishi ecosystem, providing real-time data streaming capabilities with built-in monitoring and metrics.

## 🚀 Features

- **Express.js Backend**: Lightweight and fast Node.js web framework
- **Prometheus Metrics**: Built-in monitoring and observability
- **Docker Containerized**: Ready for deployment in any containerized environment
- **GitHub Actions CI/CD**: Automated build and deployment pipeline
- **Health Checks**: Comprehensive health monitoring endpoints

## 📋 Prerequisites

- Node.js >= 18.0.0
- Docker (for containerized deployment)
- GitHub Container Registry access (for deployment)

## 🛠️ Installation

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/QuantumRishi/qr-stream.git
cd qr-stream
```

2. Install dependencies:
```bash
npm install
```

3. Start the service:
```bash
npm start
```

The service will be available at `http://localhost:3000`

### Docker Deployment

```bash
docker run -p 3000:3000 ghcr.io/quantumrishi/qr-stream:latest
```

## 📊 Monitoring

The service exposes Prometheus metrics at `/metrics` endpoint:

- HTTP request metrics
- Response times
- Error rates
- System health indicators

## 🔧 Configuration

Environment variables:

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Server port | `3000` |
| `NODE_ENV` | Environment | `development` |

## 🏗️ Architecture

```
qr-stream/
├── index.js          # Main application entry point
├── package.json      # Node.js dependencies and scripts
├── Dockerfile        # Container build configuration
├── .github/
│   ├── workflows/    # GitHub Actions CI/CD
│   └── CODEOWNERS    # Code ownership rules
└── LICENSE           # MIT License
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Please ensure all code follows the established coding standards and includes appropriate tests.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support and questions:
- Create an issue in this repository
- Contact the maintainers via [GitHub Discussions](https://github.com/QuantumRishi/qr-stream/discussions)

## 🔗 Related Projects

- [Quantum Rishi Infrastructure](https://github.com/QuantumRishi/qr-infra) - Core infrastructure components
- [Quantum Rishi AI](https://github.com/QuantumRishi/qr-ai) - AI services ecosystem

---

**Quantum Rishi** - Building the future of intelligent systems