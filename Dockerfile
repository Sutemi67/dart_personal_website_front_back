# === Сборка ===
FROM dart:stable AS build

WORKDIR /app
COPY pubspec.server.yaml ./pubspec.yaml
RUN dart pub get

COPY bin ./bin
# Добавляем флаги оптимизации при компиляции
RUN dart compile exe bin/server.dart -o bin/server

# === Финальный образ (Distroless) ===
FROM gcr.io/distroless/base-debian12

WORKDIR /app

# Копируем только бинарник и статику
COPY --from=build /app/bin/server /app/bin/server
COPY build ./build
COPY public ./public

EXPOSE 7575
ENTRYPOINT ["/app/bin/server"]