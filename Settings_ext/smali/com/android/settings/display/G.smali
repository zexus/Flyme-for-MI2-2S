.class Lcom/android/settings_ext/display/G;
.super Ljava/lang/Object;
.source "ScreenEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Wc:Lcom/android/settings_ext/display/ScreenEffect;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/ScreenEffect;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ext/display/G;->Wc:Lcom/android/settings_ext/display/ScreenEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/display/G;->Wc:Lcom/android/settings_ext/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/settings_ext/display/ScreenEffect;->finish()V

    .line 112
    return-void
.end method
