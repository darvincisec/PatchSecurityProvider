.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA384KDFAndSharedInfo;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHwithSHA384KDFAndSharedInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 340
    const-string v0, "ECDHwithSHA384KDF"

    new-instance v1, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    new-instance v2, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA384()Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V

    .line 341
    return-void
.end method
