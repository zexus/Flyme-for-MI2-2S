.class Lcom/android/settings_ext/cc;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic kt:Lcom/android/settings_ext/DreamSettings;

.field final synthetic ku:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DreamSettings;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings_ext/cc;->kt:Lcom/android/settings_ext/DreamSettings;

    iput-object p2, p0, Lcom/android/settings_ext/cc;->ku:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/cc;->ku:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 174
    const/4 v0, 0x1

    return v0
.end method
