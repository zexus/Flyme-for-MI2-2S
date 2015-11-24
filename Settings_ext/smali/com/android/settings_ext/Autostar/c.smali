.class Lcom/android/settings_ext/Autostar/c;
.super Landroid/preference/Preference;
.source "AutoMangement.java"


# instance fields
.field final synthetic bC:Lcom/android/settings_ext/Autostar/AutoMangement;

.field bD:Lcom/android/settings_ext/Autostar/AutoMangement;

.field bl:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ext/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ext/Autostar/c;->bC:Lcom/android/settings_ext/Autostar/AutoMangement;

    .line 190
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 191
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/Autostar/c;->setLayoutResource(I)V

    .line 192
    invoke-virtual {p0, p3}, Lcom/android/settings_ext/Autostar/c;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p0, p4}, Lcom/android/settings_ext/Autostar/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iput-object p5, p0, Lcom/android/settings_ext/Autostar/c;->bD:Lcom/android/settings_ext/Autostar/AutoMangement;

    .line 195
    iput-object p6, p0, Lcom/android/settings_ext/Autostar/c;->bl:Landroid/content/pm/ApplicationInfo;

    .line 196
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 201
    const v0, 0x7f100036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 202
    iget-object v1, p0, Lcom/android/settings_ext/Autostar/c;->bC:Lcom/android/settings_ext/Autostar/AutoMangement;

    iget-object v1, v1, Lcom/android/settings_ext/Autostar/AutoMangement;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ext/Autostar/c;->bl:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
