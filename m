Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBD744CC78
	for <lists+tipc-discussion@lfdr.de>; Wed, 10 Nov 2021 23:19:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mkvvt-0000zN-NP; Wed, 10 Nov 2021 22:19:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1mkvvr-0000zH-Rr
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Nov 2021 22:19:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N09BCJv98YRZWfVReddxxIdaCNRCEPF1owcIxfKgyIw=; b=IyAv31lpvQEkuvWPJrKpQysvyg
 ArddC+5bkMZiA8jfceRtblfPRyQGz6+otmBI2WeEOTu9SzAd8Ekua6Bi3MC/3mp3gEmRVw7e6C+dh
 rvfQrp7RwvwK08SDm3uA1BPu/tS9qphUfSG6mxwttSeXRk1Pd5NYPYc8iwZR6Cu3Cszk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N09BCJv98YRZWfVReddxxIdaCNRCEPF1owcIxfKgyIw=; b=g
 XC7zT5FKXRHyPkDgIs3EqHla3suDPgwYBRZScqjSl2ocjy+jNVmlWbL6HOCr9skEeNiPS0eG+V0Wb
 S5FPnS+0NGUZ61xwNTikp2nON8mbLIcOcRzpqki1FzT0l7T3aWsUbkwf9HHAKjiwttDYouoeeNbSj
 aZ07qCA31OOd8tfs=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mkvvr-008wby-A7
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Nov 2021 22:19:03 +0000
Received: by mail-wr1-f43.google.com with SMTP id d3so6495377wrh.8
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 10 Nov 2021 14:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=N09BCJv98YRZWfVReddxxIdaCNRCEPF1owcIxfKgyIw=;
 b=lS3tXCJdMVBfkJjbR+ZaOyKiirH11r0Q05zfccL3Gvay0g72Xdo4t1uTS16KlT8uJJ
 U2TmjyL2xxpgzQ+Q3UsL0Cf53v6ckM06d+lSv8GJ4kEeXpUEQIRqUryM7UpSNIkoxVl9
 yoemRKjJaksr+gf/Kr7d3VNvTWFO9JCjBaixfr3rlyaxhZ1zJ98HrQBGO0Vitd7ohmPf
 STfS5CB2CiIO/EU8xkwkbvHyN5vy67u1YKut8BFe8i7EJ3kLdmNaUv5nYMIEJZz2iqP3
 Wz03ax/WwUUDpOpI/7LfauEo+bLx6sJ3oNKfp/B3+wkj/O/4VkiEfP/hKF5kO4m6hNJI
 4ynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=N09BCJv98YRZWfVReddxxIdaCNRCEPF1owcIxfKgyIw=;
 b=R2KqHB1bN6i2opeX14B1j66CEDLCebeDB5DRXrn5EgS1qXfKWPIeyw6WPb21huEe9f
 pP2kas5WQ/g6kvObZJPMx8LhEc9RxqPqWs9dpQS4StBeYp9beDK3dAkTf1RFr7V7G1JK
 pvIlibwuQo8sXmVI3v+3LTE6wIhXjp3UnlRKaRL4eIPQBR6PCdbfAkKCZy292WCIsmv7
 uu1zA+CZF48MVvuPJi85z+/758LYMpeRb0EkOKscr1If+n4i/DWQycPPntMFk7DpArjU
 5fHZOE4OIyiObdwYlOTl086e82dTMEcXFluqPIwh4MqdLTiFPnM80YuX7ZTPIBYVJ5Tg
 p9rA==
X-Gm-Message-State: AOAM53060Kj2RDaa7SeRYA1IdldjHi8NhGZHX3E9WOsqMUpvDMyDinaj
 Lqp0s4VHFyKPg/xMZ0XuGajUE1Aj0GNyMCU8Re4lJap9wHM=
X-Google-Smtp-Source: ABdhPJzqfzXgUbuMNopTZGNf8eGUDCwZhDPPjnmUrCIxi70zUaMjvuZUiTWJcw8XHSxHrmEQD9DjJ7F+YiSwEacJfFw=
X-Received: by 2002:a5d:47aa:: with SMTP id 10mr3158732wrb.50.1636582736879;
 Wed, 10 Nov 2021 14:18:56 -0800 (PST)
MIME-Version: 1.0
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 10 Nov 2021 17:18:46 -0500
Message-ID: <CADvbK_dBvjbwZn65RTp1Dh-+YuLr_GLQdY1bh9GwQckdchJs-Q@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Everyone, Currently in tcp_rcv(),
 it seems that both unencrypted
 and encrypted packets can be processed even when key/master_key is set. After
 the key is set, which means all packets going out will be encrypted, to respond
 to the unencrypted packets with encrypted packets doesn't seem normal, from
 my point of view. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 [209.85.221.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.43 listed in list.dnswl.org]
X-Headers-End: 1mkvvr-008wby-A7
Subject: [tipc-discussion] shouldn't unencrypted packets be discarded if any
 key is set on local node?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Everyone,

Currently in tcp_rcv(), it seems that both unencrypted and encrypted packets
can be processed even when key/master_key is set.

After the key is set, which means all packets going out will be encrypted, to
respond to the unencrypted packets with encrypted packets doesn't seem
normal, from my point of view.

Besides, it may cause some potential security issues if the local node can
still receive unencrypted packets after the key is set, such as the CVE
one fixed by:

fa40d9734a57 ("tipc: fix size validations for the MSG_CRYPTO type")

So I'm thinking of only accepting the encrypted packets if any key is
set on the local node. But I'm not sure if we have any other cases
needing it to accept both kinds of packets, anyone know? Tuong?

Thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
