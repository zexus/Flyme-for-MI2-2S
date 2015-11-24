.class Lcom/android/settings_ext/dolby/DolbyEqualizer$1;
.super Ljava/lang/Object;
.source "DolbyEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->bH(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->a(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->c(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 302
    return-void
.end method
