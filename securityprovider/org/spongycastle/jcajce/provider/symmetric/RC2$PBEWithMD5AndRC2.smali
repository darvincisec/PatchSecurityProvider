.class public Lorg/spongycastle/jcajce/provider/symmetric/RC2$PBEWithMD5AndRC2;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5AndRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 137
    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/engines/RC2Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    const/16 v4, 0x40

    const/16 v5, 0x8

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;IIII)V

    .line 138
    return-void
.end method