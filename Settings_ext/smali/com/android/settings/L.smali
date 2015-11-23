.class Lcom/android/settings/L;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field bn:Ljava/text/Collator;

.field final synthetic bo:Lcom/android/settings/K;


# direct methods
.method constructor <init>(Lcom/android/settings/K;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/L;->bo:Lcom/android/settings/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/L;->bn:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/N;Lcom/android/settings/N;)I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/L;->bn:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/settings/N;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/settings/N;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lcom/android/settings/N;

    check-cast p2, Lcom/android/settings/N;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/L;->a(Lcom/android/settings/N;Lcom/android/settings/N;)I

    move-result v0

    return v0
.end method
