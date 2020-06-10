import_remote("https://github.com/cisco/libsrtp.git" TAG "v2.3.0" NO_CMAKE ALIAS libsrtp_source)

add_library(libsrtp OBJECT
	${libsrtp_source_path}/crypto/cipher/aes_gcm_ossl.c
	${libsrtp_source_path}/crypto/cipher/aes_icm_ossl.c
	${libsrtp_source_path}/crypto/cipher/cipher.c
	${libsrtp_source_path}/crypto/cipher/null_cipher.c
	${libsrtp_source_path}/crypto/hash/auth.c
	${libsrtp_source_path}/crypto/hash/hmac_ossl.c
	${libsrtp_source_path}/crypto/hash/null_auth.c
	${libsrtp_source_path}/crypto/kernel/alloc.c
	${libsrtp_source_path}/crypto/kernel/crypto_kernel.c
	${libsrtp_source_path}/crypto/kernel/err.c
	${libsrtp_source_path}/crypto/kernel/key.c
	${libsrtp_source_path}/crypto/math/datatypes.c
	${libsrtp_source_path}/crypto/math/stat.c
	${libsrtp_source_path}/crypto/replay/rdb.c
	${libsrtp_source_path}/crypto/replay/rdbx.c
	${libsrtp_source_path}/srtp/ekt.c
	${libsrtp_source_path}/srtp/srtp.c
)

target_compile_options(libsrtp PRIVATE
	"-w"
)

target_compile_definitions(libsrtp PRIVATE
	HAVE_ARPA_INET_H
	HAVE_CONFIG_H
	HAVE_INT16_T
	HAVE_INT32_T
	HAVE_INT8_T
	HAVE_INTTYPES_H
	HAVE_NETINET_IN_H
	HAVE_STDINT_H
	HAVE_STDLIB_H
	HAVE_STRING_H
	HAVE_SYS_TYPES_H
	HAVE_UINT16_T
	HAVE_UINT32_T
	HAVE_UINT64_T
	HAVE_UINT8_T
	HAVE_UNISTD_H
	GCM
	OPENSSL
	PACKAGE_STRING="libsrtp2 2.1.0-pre"
	PACKAGE_VERSION="2.1.0-pre"
)

target_include_directories(libsrtp PRIVATE
	${boringssl_source_path}/src/include
	${libsrtp_source_path}
	${libsrtp_source_path}/include
	${libsrtp_source_path}/crypto/include
	${CMAKE_CURRENT_SOURCE_DIR}/third_party/libsrtp/config
)
