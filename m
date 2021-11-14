Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A73D44FB91
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 Nov 2021 21:24:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mmM3V-0006Fh-Ij; Sun, 14 Nov 2021 20:24:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mmM3U-0006Fb-8i
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 20:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hPlsH4XeAWma8LO63309xDcm96zk1zaj3qmfJPi+JdI=; b=DLGuPq0U5o+THDAwe6aZjaZ7wb
 29HxMGRH+HsY2hOUukEWpmDLuLb2IPFNfYyDEELFKglDK8bidHNnPSybQ7fvx1VNYSJk5XDWioKt6
 CxUG87w+lTS8aVw+KmMEfQzx5xPpL2KqNswhfNIuR4VWk8WBZdUbLUp3z/RhyNGtF1cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hPlsH4XeAWma8LO63309xDcm96zk1zaj3qmfJPi+JdI=; b=SOXWbUx3WprJzou6yNISTWGt0a
 EGeaBpHyqAKvPGA5fIaPKsE4d8tQKdIzLmdG5tmUtbWSBHpU+dzA+e2L8o2UvMG9fxxxH41aXJv9y
 /a3lAzNxqO6IPQ6bwg0v5ijO2mks/iVI9maaJwhV4pAPjpewJidqPeAVbt12prl7dH8I=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mmM3T-0005Ee-LR
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 20:24:48 +0000
Received: by mail-wr1-f49.google.com with SMTP id i5so26480066wrb.2
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 Nov 2021 12:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hPlsH4XeAWma8LO63309xDcm96zk1zaj3qmfJPi+JdI=;
 b=o/rvRUYqjBE+V9daFiPBYaQfEQBTriYS+2XzdN2+qCj6OkpzGkHnhYStvtk2ifZ79V
 qd4sJU7TrAHHN+DYGHmzI9U8X+8ilzzIto9Bf2aILO8NB/WgD9eEuYeiKktT8d9fRC/t
 J1/zFBNljiTiLMjeTr046ltOkuvJenh8Z0QzsmdujKZDK46Lzv9/4B6kHpkhAm6mY5b+
 aMk6imXLoX3pCtbYnJ6ifLY3IaJBpoOJ2IRpzBZDuv7Yxur8y7NgmTt7Re7Qgm/vHbUW
 v56SzUVV8z35CsqWNT4xXl3OcuSdG0XchgzYloxTn+u0yyhTKRDSZpVyzelE2Mi/28kC
 4xjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hPlsH4XeAWma8LO63309xDcm96zk1zaj3qmfJPi+JdI=;
 b=KUhJwT1679+bsb1ntBMyhUa6tWHWoWmbO8n/0UY41vveqB6fTSofM+cL1If1TWaEW+
 usvBjm4BpCJm8a40MNrYj9KxQbq+VMcO2/LEjbLu0P2scd4+ZDPFiH3HngPzvGt0D3Mx
 IrHANRbKXWoY2uivZ/kIpTUKQxTGioYJj9a9bvbNIhRLvTqV8TY64vyr9nkT5+P8XpgK
 m0HuOiSJYd9rF7Z19NdvKVkOchV/Bw1jR+Bqhb6WccX2mTyCxPK/eHsSe7pGdM9EWQJ8
 eIKnKyTKjTwsVMM/xdzEHU3t514eZpioji7DiuUP00ISHacT2sp17SJEjfIRDoqqtcrH
 U0Pw==
X-Gm-Message-State: AOAM530chRec94T2hVuYQ+wT6e/yj2lUJIYIbgZBAtsquJMGin2nnvCr
 TW/POSLAn/mIc6oefL2ZDpyw87G6gEt2Q3he6w9v0kyS
X-Google-Smtp-Source: ABdhPJwIKOQMsWNkWLAnMNksi9uBwNcKZAXg1gdPd19zeuTqCBOlblVk7PXYTzq+nGaUD90Kodk5u3r//pP+QWFCDKQ=
X-Received: by 2002:a5d:6447:: with SMTP id d7mr41286521wrw.118.1636921481319; 
 Sun, 14 Nov 2021 12:24:41 -0800 (PST)
MIME-Version: 1.0
References: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
 <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
 <b86454a2-d0e7-e39f-9b40-6acd79a5f096@redhat.com>
In-Reply-To: <b86454a2-d0e7-e39f-9b40-6acd79a5f096@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Sun, 14 Nov 2021 15:24:30 -0500
Message-ID: <CADvbK_fyPZYWTXaekdi4qLpkO9993VAWFJQVNDKaZCA=pGYyPw@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  You're right, will do Thanks. On Sun, Nov 14, 2021 at 2:00
 PM Jon Maloy wrote: > > You should mention that is a supplementary fix to
 CVE-2021-43267, > improving the original fix in commit >
 fa40d9734a57bcbfa79a280189799f76c88f7b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mmM3T-0005Ee-LR
Subject: Re: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

You're right, will do

Thanks.

On Sun, Nov 14, 2021 at 2:00 PM Jon Maloy <jmaloy@redhat.com> wrote:
>
> You should mention that is a supplementary fix to CVE-2021-43267,
> improving the original fix in commit
> fa40d9734a57bcbfa79a280189799f76c88f7bb0 ("tipc: fix size validations
> for the MSG_CRYPTO type")
>
> ///jon
>
>
>
>
> On 11/14/21 08:09, Xue, Ying wrote:
> > Thanks Xin! The patch looks good to me.
> >
> > Acked-by: Ying Xue <ying.xue@windriver.com>
> >
> > -----Original Message-----
> > From: Xin Long <lucien.xin@gmail.com>
> > Sent: Saturday, November 13, 2021 3:23 AM
> > To: tipc-discussion@lists.sourceforge.net
> > Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted MSG_CRYPTO msgs
> >
> > The MSG_CRYPTO msgs are always encrypted and sent to other nodes for keys' deployment. But when receiving in peers, if those nodes do not validate it and make sure it's encrypted, one could craft a malicious MSG_CRYPTO msg to deploy its key with no need to know other nodes' keys.
> >
> > This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted and discard it if this packet never got decrypted.
> >
> > Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> > ---
> >   net/tipc/link.c | 7 +++++--
> >   1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/net/tipc/link.c b/net/tipc/link.c index 1b7a487c8841..09ae8448f394 100644
> > --- a/net/tipc/link.c
> > +++ b/net/tipc/link.c
> > @@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
> >               return false;
> >   #ifdef CONFIG_TIPC_CRYPTO
> >       case MSG_CRYPTO:
> > -             tipc_crypto_msg_rcv(l->net, skb);
> > -             return true;
> > +             if (TIPC_SKB_CB(skb)->decrypted) {
> > +                     tipc_crypto_msg_rcv(l->net, skb);
> > +                     return true;
> > +             }
> > +             fallthrough;
> >   #endif
> >       default:
> >               pr_warn("Dropping received illegal msg type\n");
> > --
> > 2.27.0
> >
> >
> >
> > _______________________________________________
> > tipc-discussion mailing list
> > tipc-discussion@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >
> >
> > _______________________________________________
> > tipc-discussion mailing list
> > tipc-discussion@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
