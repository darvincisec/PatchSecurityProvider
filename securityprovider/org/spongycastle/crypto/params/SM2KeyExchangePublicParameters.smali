.class public Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
.super Ljava/lang/Object;
.source "SM2KeyExchangePublicParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private staticPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 2
    .param p1, "staticPublicKey"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .param p2, "ephemeralPublicKey"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "staticPublicKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    if-nez p2, :cond_1

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ephemeralPublicKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Static and ephemeral public keys have different domain parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    iput-object p1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->staticPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 33
    return-void
.end method


# virtual methods
.method public getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->staticPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
