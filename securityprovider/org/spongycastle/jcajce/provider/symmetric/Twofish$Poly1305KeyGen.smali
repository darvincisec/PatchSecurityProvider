.class public Lorg/spongycastle/jcajce/provider/symmetric/Twofish$Poly1305KeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "Twofish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Poly1305KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "Poly1305-Twofish"

    const/16 v1, 0x100

    new-instance v2, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 72
    return-void
.end method
