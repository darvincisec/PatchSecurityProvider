.class public Lorg/spongycastle/jcajce/provider/digest/SHA3$Digest512;
.super Lorg/spongycastle/jcajce/provider/digest/SHA3$DigestSHA3;
.source "SHA3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/SHA3$DigestSHA3;-><init>(I)V

    .line 88
    return-void
.end method
