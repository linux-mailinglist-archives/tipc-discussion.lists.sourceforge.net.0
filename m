Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C14B6F4CCD
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 May 2023 00:13:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptyFR-0002O1-Qi;
	Tue, 02 May 2023 22:13:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1ptyFQ-0002Nv-PB
 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=; b=kp82+dGethAlRzHKwDgkO75H5D
 4N9vGoERnMTWJIkaMsyp0ZqMx8QmiMjAmdmJ8+kdX5PJi/YFvUE8MyGpg+Ws+Mj4vxfgin7UTKBXW
 O+Y4UrmiD0W/wkuNyO0M1yDYaaAZdCaQ+xRAxK5FuWRrz59qEfpuL6DG7mB5AvMghS8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=; b=G
 ojWkGYdGatmVvA2sguQ7XtNcNyZ6qlRTu8qXSvjIaTIaWTscTWx7iRcOqLJ36gode5IXBhJLUckn8
 AMBiKYE60yL4s5/j8PC0p4bfCacBKBDyLNBgNLfvd5KX+SwBCeI8n3LvNvLukTcuI0ADnauVD1/xQ
 7BYYLoe1eL9Etivw=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptyFP-0001e0-A9 for tipc-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 22:13:23 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-3f2771e9823so2177811cf.2
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 02 May 2023 15:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683065597; x=1685657597;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=;
 b=a3g7NsB8a9g+kM+gkjrSWUac3bqHNHVPXXidB9fx//JWUdbEnIAPCvhMfqLdLQpOFK
 a2RaYBzNxut220TBLWJgE9Edo4F455BmRgA6i/K6FJ4Iyx32ZOS2rrlJCEaAaeN2WbGx
 TuMXpzHyhKum740JmsvYU30JyRf2AlXhvx1uHfflbTb9BjPfBwWOeIr+4XoTLAGcs7GM
 4dt9gN4ROLMe8GsufY5yoh6TcY03jtorzl/ENveesg1fThJAzWCU+KT/A9y16MDLdsmH
 Q4L9UrtwLhj6/0BbX0KWvL6138ZbNGzNBCc5XF7/QbO3JTPaSeHtJxaGgoHSicU17YmM
 3LSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683065597; x=1685657597;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=;
 b=VyqfDjyyfOkB+PAtgmIA490CKaKkgO+Bn8YgOyJBPg2AtcIeje9QrB4mxRYND1W57H
 XV0/9EQ2XKkQn2ve9styO2MKTH3tnonYmLtTFzmzZmZloZ3kNHu1qpLD87GuQpuHy2vi
 DVaQuML4xayiSw2qL+RtlyWd4Z992Hf9hKbKQ0gJsCNmKCMij+bi+al1UzKcDfP88S8k
 CdPNzxKzurmNd5y5YOYH9GGeuFQDfJ1hUKLi1nqIeBveR2R/BLHSYyAmUFpLt81X2xrZ
 zlpm1v7eJDZ5vO39gBSksac/woTXiu+SQcFIfV2EK/gU7NRNfJUzcHIPHhJrBBEyXe+O
 3yNA==
X-Gm-Message-State: AC+VfDzGwQ1ovwpFfkEAEJY8hcb2uslnbaNBCw4l4zoEfZplsfhBk/4U
 cEhgFZCoistbxxH0lt5qcRw=
X-Google-Smtp-Source: ACHHUZ4BF2acC2J592aZmYL6ukFagSi04tFXhGQN5Fwb0tLOBzvxp/1ncpB5LoQgZRZVjbGZAvKOBw==
X-Received: by 2002:ac8:5a55:0:b0:3bf:daae:7ee3 with SMTP id
 o21-20020ac85a55000000b003bfdaae7ee3mr30438427qta.53.1683065597462; 
 Tue, 02 May 2023 15:13:17 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 cf23-20020a05622a401700b003ef58044a4bsm10362636qtb.34.2023.05.02.15.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 May 2023 15:13:17 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Tue,  2 May 2023 18:13:12 -0400
Message-Id: <cover.1683065352.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patchset fixes a crash caused by a too small MTU carried
 in the activate msg. Note that as such malicious packet does not exist in
 the normal env, the fix won't break any application The 1st patch introduces
 a function to calculate the minimum MTU for the bearer, and the 2nd patch
 fixes the crash with this helper. While at it, the 3rd patch fixes the udp
 bearer mtu update by netli [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ptyFP-0001e0-A9
Subject: [tipc-discussion] [PATCHv2 net 0/3] tipc: fix the mtu update in
 link mtu negotiation
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patchset fixes a crash caused by a too small MTU carried in the
activate msg. Note that as such malicious packet does not exist in
the normal env, the fix won't break any application

The 1st patch introduces a function to calculate the minimum MTU for
the bearer, and the 2nd patch fixes the crash with this helper. While
at it, the 3rd patch fixes the udp bearer mtu update by netlink with
this helper.

Xin Long (3):
  tipc: add tipc_bearer_min_mtu to calculate min mtu
  tipc: do not update mtu if msg_max is too small in mtu negotiation
  tipc: check the bearer min mtu properly when setting it by netlink

 net/tipc/bearer.c    | 17 +++++++++++++++--
 net/tipc/bearer.h    |  3 +++
 net/tipc/link.c      |  9 ++++++---
 net/tipc/udp_media.c |  5 +++--
 4 files changed, 27 insertions(+), 7 deletions(-)

-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
