part of 'song_bloc.dart';

sealed class SongState extends Equatable {
  const SongState();

  @override
  List<Object> get props => [];
}

final class SongInitial extends SongState {}

class SongLoading extends SongState {}

class SongLoaded extends SongState {
  final List<Song> songs;
  SongLoaded(this.songs);
}

class SongError extends SongState {
  final String message;
  SongError(this.message);
}
