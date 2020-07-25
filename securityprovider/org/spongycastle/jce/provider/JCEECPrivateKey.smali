.class public Lorg/spongycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lorg/spongycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lorg/spongycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 93
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 95
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 184
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 185
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lorg/spongycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 116
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 118
    .local v0, "dp":Lorg/spongycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 119
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 121
    if-nez p4, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 125
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 128
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 129
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 130
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 131
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 138
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lorg/spongycastle/jce/provider/JCEECPublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    .line 139
    return-void

    .line 135
    :cond_0
    iput-object p4, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jce/provider/JCEECPublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lorg/spongycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Lorg/spongycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 147
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 149
    .local v0, "dp":Lorg/spongycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 150
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 152
    if-nez p4, :cond_0

    .line 154
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 156
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 159
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 160
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 161
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 162
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 177
    :goto_0
    invoke-direct {p0, p3}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lorg/spongycastle/jce/provider/JCEECPublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    .line 178
    return-void

    .line 166
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 168
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 171
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 172
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 173
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 174
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/spongycastle/jce/provider/JCEECPrivateKey;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 102
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 103
    iget-object v0, p2, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 104
    iget-object v0, p2, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 105
    iget-boolean v0, p2, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 106
    iget-object v0, p2, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 107
    iget-object v0, p2, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lorg/spongycastle/jce/spec/ECPrivateKeySpec;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 70
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 71
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 73
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 78
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 80
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 86
    .end local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 61
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 193
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 194
    return-void
.end method

.method private getPublicKeyDetails(Lorg/spongycastle/jce/provider/JCEECPublicKey;)Lorg/spongycastle/asn1/DERBitString;
    .locals 3
    .param p1, "pub"    # Lorg/spongycastle/jce/provider/JCEECPublicKey;

    .prologue
    .line 443
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 445
    .local v1, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 449
    .end local v1    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_0
    return-object v2

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateFromPrivKeyInfo(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 13
    .param p1, "info"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v11, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v11, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 201
    .local v11, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    .line 204
    .local v10, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v10}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 206
    .local v8, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v8, :cond_0

    .line 208
    invoke-static {v10}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    .line 209
    .local v9, "gParam":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 211
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    .line 212
    invoke-static {v10}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 215
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 216
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 217
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 218
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 252
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v9    # "gParam":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v10    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    .line 253
    .local v12, "privKey":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v0, v12, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_3

    .line 255
    invoke-static {v12}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v6

    .line 257
    .local v6, "derD":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 266
    .end local v6    # "derD":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v12    # "privKey":Lorg/spongycastle/asn1/ASN1Encodable;
    :goto_1
    return-void

    .line 222
    .restart local v8    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .restart local v10    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 224
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    .line 225
    invoke-static {v10}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 228
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 229
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 230
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 231
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 234
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v10    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 241
    .restart local v8    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 243
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    .line 246
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 247
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 248
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 249
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_0

    .line 261
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .restart local v12    # "privKey":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v7, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    check-cast v12, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local v12    # "privKey":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-direct {v7, v12}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 263
    .local v7, "ec":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 264
    invoke-virtual {v7}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    goto/16 :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 459
    .local v0, "enc":[B
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 463
    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 465
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 466
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 474
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 476
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 477
    return-void
.end method


# virtual methods
.method engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 412
    instance-of v2, p1, Lorg/spongycastle/jce/provider/JCEECPrivateKey;

    if-nez v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 417
    check-cast v0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;

    .line 419
    .local v0, "other":Lorg/spongycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 397
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 11

    .prologue
    .line 293
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 296
    .local v6, "curveOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_0

    .line 298
    new-instance v6, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v6    # "curveOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v6    # "curveOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v10, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v10, v6}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 323
    .end local v6    # "curveOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v2, :cond_3

    .line 325
    new-instance v9, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v9, v2, v3, v10}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 334
    .local v9, "keyStructure":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    const-string v3, "ECGOST3410"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    new-instance v8, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 344
    .local v8, "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_2
    const-string v2, "DER"

    invoke-virtual {v8, v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 348
    .end local v8    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_3
    return-object v2

    .line 302
    .end local v9    # "keyStructure":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v10    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_2

    .line 304
    new-instance v10, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v10, v2}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Null;)V

    .restart local v10    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 308
    .end local v10    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 310
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 312
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 313
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 314
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 315
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 317
    .local v0, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v10, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v10, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .restart local v10    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 329
    .end local v0    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    :cond_3
    new-instance v9, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v9, v2, v10}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .restart local v9    # "keyStructure":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_1

    .line 341
    :cond_4
    :try_start_1
    new-instance v8, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v8    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    goto :goto_2

    .line 346
    .end local v8    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v7

    .line 348
    .local v7, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 391
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 392
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 408
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 430
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lorg/spongycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
