.class public Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$Wrap128;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/DSTU7624WrapEngine;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/spongycastle/crypto/Wrapper;)V

    .line 286
    return-void
.end method
