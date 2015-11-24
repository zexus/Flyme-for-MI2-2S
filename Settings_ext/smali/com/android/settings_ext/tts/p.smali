.class Lcom/android/settings_ext/tts/p;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic als:Lcom/android/settings_ext/tts/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/tts/l;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings_ext/tts/p;->als:Lcom/android/settings_ext/tts/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 269
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/tts/p;->a(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
