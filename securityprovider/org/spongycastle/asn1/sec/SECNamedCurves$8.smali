.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$8;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 15

    .prologue
    .line 239
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    invoke-static {v1}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v13

    .line 240
    .local v13, "p":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 241
    .local v9, "a":Ljava/math/BigInteger;
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 242
    .local v10, "b":Ljava/math/BigInteger;
    const/4 v8, 0x0

    .line 243
    .local v8, "S":[B
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"

    invoke-static {v1}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v12

    .line 244
    .local v12, "n":Ljava/math/BigInteger;
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 246
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    const/16 v5, 0x10

    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    const/16 v5, 0x10

    invoke-direct {v2, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "71169be7330b3038edb025f1"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "-b3fb3400dec5c4adceb8655c"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/math/BigInteger;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "12511cfe811d0f4e6bc688b4d"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "71169be7330b3038edb025f1"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v4, v5

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "71169be7330b3038edb025f1d0f9"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b3fb3400dec5c4adceb8655d4c94"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xd0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 259
    .local v0, "glv":Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v2, v13

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$200(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 262
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    new-instance v3, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v1, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    .line 266
    .local v3, "G":Lorg/spongycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v4, v12

    move-object v5, v11

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
