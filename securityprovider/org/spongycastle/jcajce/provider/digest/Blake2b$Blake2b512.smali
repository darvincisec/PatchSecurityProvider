.class public Lorg/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "Blake2b.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blake2b512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 21
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512;

    .line 27
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512;
    new-instance v2, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/Blake2bDigest;-><init>(Lorg/spongycastle/crypto/digests/Blake2bDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512;->digest:Lorg/spongycastle/crypto/Digest;

    .line 29
    return-object v0
.end method
