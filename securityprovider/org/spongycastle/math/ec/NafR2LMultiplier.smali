.class public Lorg/spongycastle/math/ec/NafR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "NafR2LMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 12
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v4

    .line 14
    .local v4, "naf":[I
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .local v0, "R0":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, p1

    .line 16
    .local v1, "R1":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v6, 0x0

    .line 17
    .local v6, "zeroes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_1

    .line 19
    aget v5, v4, v3

    .line 20
    .local v5, "ni":I
    shr-int/lit8 v2, v5, 0x10

    .line 21
    .local v2, "digit":I
    const v7, 0xffff

    and-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 23
    invoke-virtual {v1, v6}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 24
    if-gez v2, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    :goto_1
    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 26
    const/4 v6, 0x1

    .line 17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v7, v1

    .line 24
    goto :goto_1

    .line 29
    .end local v2    # "digit":I
    .end local v5    # "ni":I
    :cond_1
    return-object v0
.end method
