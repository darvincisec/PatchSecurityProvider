.class public Lorg/spongycastle/jcajce/provider/digest/Keccak$Digest512;
.super Lorg/spongycastle/jcajce/provider/digest/Keccak$DigestKeccak;
.source "Keccak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Keccak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/Keccak$DigestKeccak;-><init>(I)V

    .line 78
    return-void
.end method
