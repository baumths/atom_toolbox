import '../models/docker/atom_containers.dart';
import '../models/console/command.dart';

abstract class DockerCompose {
  const DockerCompose();

  static void up([bool detached = true]) {}

  static void down([bool clearVolumes = false]) {}

  static void exec(AtoMContainers container, Command command) {}

  static void logs([AtoMContainers? container]) {}

  static void inspect(AtoMContainers container) {
    /* 
      * --format '{{.ID}}, {{.Name}}, {{.State.Status}}, {{.State.ExitCode}}'
    */
  }
}
