import 'package:dio/dio.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:thefive_planetaagua/services/service_config.dart';

class IndicadoresService {
  static final String _endpoint =
      'https://618d8a78fe09aa00174407d8.mockapi.io/';
  static final String _resource = 'IndicadoresReal';
  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<IndicadorSeries>> findAllAsync() async {
    List<IndicadorSeries> lista = [];

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            IndicadorSeries indicador = new IndicadorSeries.fromJson(value);
            lista.add(indicador);
          },
        );
      }
    } catch (error) {
      print('Ocorreu um erro: $error');
      throw error;
    }
    return lista;
  }
}
