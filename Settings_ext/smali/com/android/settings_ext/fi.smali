.class Lcom/android/settings_ext/fi;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic tN:Lcom/android/settings_ext/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ext/fi;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/fi;->tN:Lcom/android/settings_ext/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/OwnerInfoSettings;->a(Lcom/android/settings_ext/OwnerInfoSettings;Z)Z

    .line 139
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
