.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi$withShake256;
.super Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;
.source "XMSSMTSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 199
    const-string v0, "SHAKE256withXMSSMT"

    new-instance v1, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;)V

    .line 200
    return-void
.end method
