Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A1D45CAB1
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Nov 2021 18:11:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mpvnl-0005I3-NU; Wed, 24 Nov 2021 17:11:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mpvnk-0005Hw-19
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Nov 2021 17:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Vfrj2SnVlWvnBYwm3pYtP3SbPZdfXlnI21Bodg7/Hg=; b=Z7+WBxMdDr3BLg+lkDtOk8y21x
 DO4mDAImVu2Xm3ZdnbgPsCYVYiJ3bmfNJQoG4TfcaJ+OMGVQq2t3fIXdiYZX8130vjlvAIiZ38p1d
 5rvJc9sn+D2Uuu3+RTG6aB7rzMHWiiI/w3lwnV9iHG/8ussxhgl5qwWDKtABAgo+I0DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5Vfrj2SnVlWvnBYwm3pYtP3SbPZdfXlnI21Bodg7/Hg=; b=A
 3o3vAqnnmrGnlSdSles8dRhQ0OQPet75I6x/TKIbL8ovlxRq5oRI16Mx0YxHeoUbWz3ibr8p1kqYf
 Ff3yMdc6clA51YZ+YT1iP5f/XxsuEhry4Z1teWvnh/N3rBPaIkvxDmzg7VfUDpo84eRQEzX5JywPl
 aBnlGvH12Lp6AbqY=;
Received: from mail-qv1-f48.google.com ([209.85.219.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpvnj-0001Kg-E6
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Nov 2021 17:11:19 +0000
Received: by mail-qv1-f48.google.com with SMTP id i13so2267113qvm.1
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Nov 2021 09:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Vfrj2SnVlWvnBYwm3pYtP3SbPZdfXlnI21Bodg7/Hg=;
 b=pQKgnLOdRzBHEeesEgNar5zDI1mac8ln/4u03dFSBwfyDphTacfZtOEiVUPrOsg/Sy
 1ak99Sgh61Z6kwRkReSHyrmeguOq9fAoOa1Txas9W34pwmCY2dUkXvSya0X1oxwtvH48
 zHWAUWRaxkZfBlX3BmGNYJotSRYsAy7rR0N8VAVKSR4KBNiN5UQX2Y9CPTJ6pq0lY4Ld
 ldCMTeqiF/wy9q9Dq627MwFCAozLRBak0CkLgglEyOrdr51bFS6SvCGuDgA7VumUu7SI
 SsL2YjLtqkU1CB1iF4ANR/v/2kbO3GQ91l/ip07vIzje0DOTu1sZBGzwVE3ff5NmHqrK
 oN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Vfrj2SnVlWvnBYwm3pYtP3SbPZdfXlnI21Bodg7/Hg=;
 b=sqYyvYQFDlP5RkpZDJ6Zrn/VMoB0gYfpJhu8LdapzsM2jPBQWi5nKRFSQEVAAolULW
 LaVmJJOjvv6W433Y7fpGlfHqxDhXJEykG+rtYbKCz1TgYSlWwj5vfHASoeAS8i2JuDAi
 KgoNIaDf4bG1jOUGIFs+Um3EY27H0W4mAe/wEH91qwRSpklfsLeggOPWg6Og47i5SFme
 UzmPOWwcDZ3Yc1uSaq77PwYYuzWA49KLaQUA9zNLtPZ9pYmkD6B2kU8eZiE5xyFFtCwM
 VnPfGrD+U2R93S3HTNuE44yEL5DVXe+f0He31AiOBQjEyIv7NBnbsWTmtDwNlwsQRWQJ
 A6gw==
X-Gm-Message-State: AOAM533xmTBIZfKeVPR8MLgTgOCmD+CmnSLEw4z0rVDIN/luacQ5tK2r
 KKmyuD5de4aV0M6AHnP7N8g=
X-Google-Smtp-Source: ABdhPJxBo0YjmcGf08qEPVXStLCMocLsWPFf8YJ2fI9L+4nW1+dcgpqPL5ajWG27eeLqxWNOU06nig==
X-Received: by 2002:a05:6214:411d:: with SMTP id
 kc29mr9204931qvb.22.1637773873673; 
 Wed, 24 Nov 2021 09:11:13 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id bi6sm146182qkb.29.2021.11.24.09.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 09:11:13 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Wed, 24 Nov 2021 12:11:12 -0500
Message-Id: <47a478da0b6095b76e3cbe7a75cbd25d9da1df9a.1637773872.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When a skb comes to tipc_aead_encrypt(), it's always linear.
 The unlikely check 'skb_cloned(skb) && tailen <= skb_tailroom(skb)' can
 completely
 be taken care of in skb_cow_data() by the code in branch [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.48 listed in wl.mailspike.net]
X-Headers-End: 1mpvnj-0001Kg-E6
Subject: [tipc-discussion] [PATCH net-next] tipc: delete the unlikely branch
 in tipc_aead_encrypt
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
Cc: kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When a skb comes to tipc_aead_encrypt(), it's always linear. The
unlikely check 'skb_cloned(skb) && tailen <= skb_tailroom(skb)'
can completely be taken care of in skb_cow_data() by the code
in branch "if (!skb_has_frag_list())".

Also, remove the 'TODO:' annotation, as the pages in skbs are not
writable, see more on commit 3cf4375a0904 ("tipc: do not write
skb_shinfo frags when doing decrytion").

Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index b4d9419a015b..81116312b753 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -761,21 +761,10 @@ static int tipc_aead_encrypt(struct tipc_aead *aead, struct sk_buff *skb,
 			 skb_tailroom(skb), tailen);
 	}
 
-	if (unlikely(!skb_cloned(skb) && tailen <= skb_tailroom(skb))) {
-		nsg = 1;
-		trailer = skb;
-	} else {
-		/* TODO: We could avoid skb_cow_data() if skb has no frag_list
-		 * e.g. by skb_fill_page_desc() to add another page to the skb
-		 * with the wanted tailen... However, page skbs look not often,
-		 * so take it easy now!
-		 * Cloned skbs e.g. from link_xmit() seems no choice though :(
-		 */
-		nsg = skb_cow_data(skb, tailen, &trailer);
-		if (unlikely(nsg < 0)) {
-			pr_err("TX: skb_cow_data() returned %d\n", nsg);
-			return nsg;
-		}
+	nsg = skb_cow_data(skb, tailen, &trailer);
+	if (unlikely(nsg < 0)) {
+		pr_err("TX: skb_cow_data() returned %d\n", nsg);
+		return nsg;
 	}
 
 	pskb_put(skb, trailer, tailen);
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
