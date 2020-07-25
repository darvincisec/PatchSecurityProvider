.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;
.super Ljava/lang/Object;
.source "JPAKERound2Payload.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final knowledgeProofForX2s:[Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "knowledgeProofForX2s"    # [Ljava/math/BigInteger;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "a"

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string v0, "knowledgeProofForX2s"

    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->participantId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->a:Ljava/math/BigInteger;

    .line 51
    array-length v0, p3

    invoke-static {p3, v0}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->knowledgeProofForX2s:[Ljava/math/BigInteger;

    .line 52
    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getKnowledgeProofForX2s()[Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->knowledgeProofForX2s:[Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->knowledgeProofForX2s:[Ljava/math/BigInteger;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->participantId:Ljava/lang/String;

    return-object v0
.end method
