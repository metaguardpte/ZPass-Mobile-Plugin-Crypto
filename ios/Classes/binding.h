#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#define AES256GCM_IV_BYTE_SIZE 12

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct WireSyncReturnStruct {
  uint8_t *ptr;
  int32_t len;
  bool success;
} WireSyncReturnStruct;

void zp_store_dart_post_cobject(DartPostCObjectFnType ptr);

void wire_create_user_key_model(int64_t port_,
                                struct wire_uint_8_list *identifier_name,
                                struct wire_uint_8_list *master_password,
                                struct wire_uint_8_list *raw);

struct WireSyncReturnStruct wire_generate_secret_key(void);

struct WireSyncReturnStruct wire_new_crypto_service(void);

void wire_login(int64_t port_,
                struct wire_uint_8_list *client_id,
                struct wire_uint_8_list *identifier_name,
                struct wire_uint_8_list *master_password,
                struct wire_uint_8_list *secret_key,
                struct wire_uint_8_list *host,
                struct wire_uint_8_list *header_json,
                bool is_personal);

void wire_relogin(int64_t port_,
                  struct wire_uint_8_list *client_id,
                  struct wire_uint_8_list *identifier_name,
                  struct wire_uint_8_list *host,
                  struct wire_uint_8_list *header_json,
                  bool is_personal);

struct WireSyncReturnStruct wire_offline_login(struct wire_uint_8_list *client_id,
                                               struct wire_uint_8_list *identifier_name,
                                               struct wire_uint_8_list *master_key,
                                               struct wire_uint_8_list *master_key_hash,
                                               struct wire_uint_8_list *personal_data_key,
                                               struct wire_uint_8_list *enterprise_data_key,
                                               bool is_personal);

void wire_pre_cache_data_key(int64_t port_, struct wire_uint_8_list *client_id, bool is_personal);

struct WireSyncReturnStruct wire_destory(struct wire_uint_8_list *client_id);

struct WireSyncReturnStruct wire_get_data_key_request_body(struct wire_uint_8_list *client_id,
                                                           struct wire_uint_8_list *payload);

struct WireSyncReturnStruct wire_derive_data_key(struct wire_uint_8_list *client_id,
                                                 struct wire_uint_8_list *data_key,
                                                 bool is_personal);

struct WireSyncReturnStruct wire_encrypt_text(struct wire_uint_8_list *client_id,
                                              struct wire_uint_8_list *plaintext,
                                              bool is_personal);

struct WireSyncReturnStruct wire_decrypt_text(struct wire_uint_8_list *client_id,
                                              struct wire_uint_8_list *cipher_text,
                                              bool is_personal);

void wire_generate_shared_key(int64_t port_, struct wire_uint_8_list *client_id, int32_t user_id);

struct WireSyncReturnStruct wire_generate_phemeral(void);

void wire_generate_login_body(int64_t port_,
                              struct wire_uint_8_list *client_id,
                              struct wire_uint_8_list *identifier_name,
                              struct wire_uint_8_list *master_password,
                              struct wire_uint_8_list *secret_key,
                              struct wire_uint_8_list *client_pair,
                              struct wire_uint_8_list *server_public_key,
                              struct wire_uint_8_list *payload);

struct WireSyncReturnStruct wire_verify_server(struct wire_uint_8_list *client_id,
                                               struct wire_uint_8_list *client_pair,
                                               struct wire_uint_8_list *server_identifier_proof);

struct WireSyncReturnStruct wire_calc_password_hash(struct wire_uint_8_list *identifier_name,
                                                    struct wire_uint_8_list *master_password,
                                                    struct wire_uint_8_list *secret_key);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_create_user_key_model);
    dummy_var ^= ((int64_t) (void*) wire_generate_secret_key);
    dummy_var ^= ((int64_t) (void*) wire_new_crypto_service);
    dummy_var ^= ((int64_t) (void*) wire_login);
    dummy_var ^= ((int64_t) (void*) wire_relogin);
    dummy_var ^= ((int64_t) (void*) wire_offline_login);
    dummy_var ^= ((int64_t) (void*) wire_pre_cache_data_key);
    dummy_var ^= ((int64_t) (void*) wire_destory);
    dummy_var ^= ((int64_t) (void*) wire_get_data_key_request_body);
    dummy_var ^= ((int64_t) (void*) wire_derive_data_key);
    dummy_var ^= ((int64_t) (void*) wire_encrypt_text);
    dummy_var ^= ((int64_t) (void*) wire_decrypt_text);
    dummy_var ^= ((int64_t) (void*) wire_generate_shared_key);
    dummy_var ^= ((int64_t) (void*) wire_generate_phemeral);
    dummy_var ^= ((int64_t) (void*) wire_generate_login_body);
    dummy_var ^= ((int64_t) (void*) wire_verify_server);
    dummy_var ^= ((int64_t) (void*) wire_calc_password_hash);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturnStruct);
    dummy_var ^= ((int64_t) (void*) zp_store_dart_post_cobject);
    return dummy_var;
}
