.class public Lcom/android/vending/plugin/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/plugin/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/vending/plugin/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vending/plugin/Security;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 92
    sget-object v2, Lcom/android/vending/plugin/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 93
    .local v0, "nonce":J
    sget-object v2, Lcom/android/vending/plugin/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    invoke-static {p0}, Lcom/android/vending/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 253
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 254
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vending/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 255
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 257
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 260
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 261
    .local v1, "e":Lcom/android/vending/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 305
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 307
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 309
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 317
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 317
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    const-string v3, "FAILED,"

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 102
    sget-object v0, Lcom/android/vending/plugin/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 98
    sget-object v0, Lcom/android/vending/plugin/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 281
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 282
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 284
    invoke-static {p2}, Lcom/android/vending/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 298
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 288
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 294
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 296
    .local v0, "e":Lcom/android/vending/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 32
    .param p0, "signedData"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/plugin/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string v3, "Security"

    const-string v30, "data is null"

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v26, 0x0

    .line 240
    :goto_0
    return-object v26

    .line 125
    :cond_0
    const/16 v29, 0x0

    .line 126
    .local v29, "verified":Z
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v26, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/plugin/Security$VerifiedPurchase;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 141
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v25, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "signedData"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "signature"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/16 v18, 0x0

    .line 147
    .local v18, "jsonTransactionsArray":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .line 148
    .local v16, "jsonDeveloperPayload":Ljava/lang/String;
    const/16 v21, 0x0

    .line 151
    .local v21, "numTrans":I
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v17, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "orders"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 155
    if-eqz v18, :cond_1

    .line 156
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 159
    :cond_1
    if-nez v21, :cond_2

    .line 160
    new-instance v3, Lcom/android/vending/plugin/Security$VerifiedPurchase;

    sget-object v4, Lcom/android/vending/plugin/Consts$PurchaseState;->OTHER:Lcom/android/vending/plugin/Consts$PurchaseState;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, ""

    invoke-direct/range {v3 .. v10}, Lcom/android/vending/plugin/Security$VerifiedPurchase;-><init>(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v3, "Security"

    const-string v30, "orders is empty."

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 168
    .local v11, "e":Lorg/json/JSONException;
    const/16 v26, 0x0

    goto :goto_0

    .line 164
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v17    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 165
    .local v13, "jElement":Lorg/json/JSONObject;
    const-string v3, "developerPayload"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 171
    invoke-static/range {v16 .. v16}, Lcom/android/vending/plugin/BillingService;->checkPayload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    const-string v3, "&"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 173
    .local v24, "paramArray":[Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "user_id"

    const/16 v31, 0x0

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "user_name"

    const/16 v31, 0x1

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "product_id"

    const/16 v31, 0x2

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "lng"

    const/16 v31, 0x3

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "price_id"

    const/16 v31, 0x4

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, v24

    array-length v3, v0

    const/16 v30, 0x5

    move/from16 v0, v30

    if-le v3, v0, :cond_3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "navcode"

    const/16 v31, 0x5

    aget-object v31, v24, v31

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/impaycenter/Paycenter;->KEY_URL:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v30, "channels/google/pay.php"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/vending/plugin/Security;->httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v28

    .line 180
    .local v28, "resulte":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 183
    .end local v24    # "paramArray":[Ljava/lang/String;
    .end local v28    # "resulte":Ljava/lang/String;
    :cond_4
    if-nez v29, :cond_5

    .line 184
    const-string v3, "Security"

    const-string v30, "signature does not match data."

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 190
    .end local v13    # "jElement":Lorg/json/JSONObject;
    .end local v16    # "jsonDeveloperPayload":Ljava/lang/String;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "jsonTransactionsArray":Lorg/json/JSONArray;
    .end local v21    # "numTrans":I
    .end local v25    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_5
    const/4 v15, 0x0

    .line 191
    .local v15, "jTransactionsArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    .line 192
    .local v22, "numTransactions":I
    const-wide/16 v19, 0x0

    .line 194
    .local v19, "nonce":J
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v14, "jObject":Lorg/json/JSONObject;
    const-string v3, "nonce"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 198
    const-string v3, "orders"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 199
    if-eqz v15, :cond_6

    .line 200
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    .line 206
    :cond_6
    invoke-static/range {v19 .. v20}, Lcom/android/vending/plugin/Security;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_7

    .line 207
    const-string v3, "Security"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Nonce not found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 202
    .end local v14    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    .line 203
    .restart local v11    # "e":Lorg/json/JSONException;
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 212
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v14    # "jObject":Lorg/json/JSONObject;
    :cond_7
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v12, v0, :cond_a

    .line 213
    :try_start_2
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 214
    .restart local v13    # "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 215
    .local v27, "response":I
    invoke-static/range {v27 .. v27}, Lcom/android/vending/plugin/Consts$PurchaseState;->valueOf(I)Lcom/android/vending/plugin/Consts$PurchaseState;

    move-result-object v4

    .line 216
    .local v4, "purchaseState":Lcom/android/vending/plugin/Consts$PurchaseState;
    const-string v3, "productId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "packageName"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 219
    .local v23, "packageName":Ljava/lang/String;
    const-string v3, "purchaseTime"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 220
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 222
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    const-string v3, "notificationId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    :cond_8
    const-string v3, "developerPayload"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "developerPayload":Ljava/lang/String;
    sget-object v3, Lcom/android/vending/plugin/Consts$PurchaseState;->PURCHASED:Lcom/android/vending/plugin/Consts$PurchaseState;

    if-ne v4, v3, :cond_9

    if-nez v29, :cond_9

    .line 212
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 232
    :cond_9
    new-instance v3, Lcom/android/vending/plugin/Security$VerifiedPurchase;

    invoke-direct/range {v3 .. v10}, Lcom/android/vending/plugin/Security$VerifiedPurchase;-><init>(Lcom/android/vending/plugin/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 235
    .end local v4    # "purchaseState":Lcom/android/vending/plugin/Consts$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    .end local v13    # "jElement":Lorg/json/JSONObject;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v27    # "response":I
    :catch_2
    move-exception v11

    .line 236
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v3, "Security"

    const-string v30, "JSON exception: "

    move-object/from16 v0, v30

    invoke-static {v3, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 239
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_a
    invoke-static/range {v19 .. v20}, Lcom/android/vending/plugin/Security;->removeNonce(J)V

    goto/16 :goto_0
.end method
