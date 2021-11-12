import 'package:dio/dio.dart';
import 'package:thefive_planetaagua/model/indicador_model.dart';
import 'package:thefive_planetaagua/services/service_config.dart';

class IndicadoresService {
  static final String _endpoint =
      'https://618d8a78fe09aa00174407d8.mockapi.io/';
  static final String _resource = 'IndicadoresReal';
  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<IndicadorModel>> findAllAsync() async {
    List<IndicadorModel> lista = [];

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            IndicadorModel indicador = new IndicadorModel.fromMap(value);
            lista.add(indicador);
            print(indicador);
          },
        );
      }
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }

    return lista;
  }

  Future<String> create(IndicadorModel indicador) async {
    try {
      indicador.id = '0';

      Response response = await service.create().post(
            _resource,
            data: indicador.toMap(), //payload
          );

      if (response.statusCode == 201) {
        indicador = IndicadorModel.fromMap(response.data);
      }

      return indicador.id;
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }
  }
}

class LocalService {
  final resource;

  LocalService(this.resource);

  static final String _endpoint =
      'https://618d8a78fe09aa00174407d8.mockapi.io/IndicadoresReal';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<IndicadorModel>> findAllAsync() async {
    List<IndicadorModel> lista = [];

    try {
      Response response = await service.create().get(resource);
      if (response.statusCode == 200) {
        IndicadorModel indicador = new IndicadorModel.fromMap(response.data);
        lista.add(indicador);
      }
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }

    return lista;
  }
}
