.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v9, 0x10

    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, "S":[B
    new-instance v0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    invoke-direct {v1, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v2, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-array v3, v6, [Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "71169be7330b3038edb025f1"

    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v10

    new-array v4, v6, [Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v7

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "71169be7330b3038edb025f1"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v10

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xd0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 187
    .local v0, "glv":Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;

    invoke-direct {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 188
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    new-instance v3, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v1, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    .line 191
    .local v3, "G":Lorg/spongycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
