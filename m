Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A6C3BDD09
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piJ-0001qb-CF; Tue, 06 Jul 2021 18:22:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piH-0001qV-RM
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFB/xuvNh5kixKWGJ0Ir9cAfDMLAQq5exr9Wh+sr9NY=; b=WTXRfDg3OX+IozIL78S7mvQsbS
 1T+F1jnBq4G3L8IB7CuKFOdgcCfdbVYx4Sz3x6h8V2y21ghkKnx7bxWAVuzhmnTByeU90V5eHJvGi
 INONizy/umhgsWjk61uQIneEM/oUcLiV3I/PMtdVhpbr5rYaDSKxxHjpfBs1pg0/msUk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bFB/xuvNh5kixKWGJ0Ir9cAfDMLAQq5exr9Wh+sr9NY=; b=h
 EuTfm0Ik2LVTHa9eFt2O12N4+k2y9+6i1CpbHtjEGgD7dnjQ7XLIZrU09yWAcJ+Z4TpXUMQ+R3sqD
 w8SfYBhPRvvcXJ9HC1HHx27sL0YiGhWPpvXAqSsgfgpjq8a7rG91IDel0CJqGvLWQaAHstBR6VUsH
 lvCaMybOJIYlRCe4=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piB-00Cbnu-0b
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:29 +0000
Received: by mail-wr1-f49.google.com with SMTP id n9so26575wrs.13
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bFB/xuvNh5kixKWGJ0Ir9cAfDMLAQq5exr9Wh+sr9NY=;
 b=I9n9G/y42q8bZzBwXP8gzrEj0iHO9QA2viQSAhbQrnZCtSpmOjkTNPrUKx2EvNZYNz
 gtH27+hzCPm31h/ttVcM3mS9rJHgnDNO5iFqPKYrpB7VovKjUfoetx844QsLRaWLPSK9
 8HnXmDNZF2OXd6R7XaKEBaRWhUISnLnJezkkV5qqrc9IWjDc9dD3uUDWbNBmXx658cKj
 lhPsje0Z5HLi1BUeocOVhiOUL8kQEvgM2kFmrby9EOYqe1biBl53rI5peYwUiDGM8PqI
 PsCJAY58WN32Qxw4AxszfSzHGiOFV6r4NO+uhCQXOPbITF8pYJyETHm7sdNjYBy1EQTj
 wcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bFB/xuvNh5kixKWGJ0Ir9cAfDMLAQq5exr9Wh+sr9NY=;
 b=bnFO2+p/QkXtFd937xojDVTwnRqjX7FvkskOVB3otSs11KJ22oC7PFI1zgYLPKKVyp
 iufj5jl9jElKjodfu+aZogJygBDxGob6cKbZfpGVis/PooK/ZjC2oEK6wk+2y5VTPKdo
 V6NzOhVzBQUXC5d2dmrDdhsgb6LBK/Bh27X0H3h1L7KcLyj7Rzre2RAToHtNlIX7LkYU
 eqQEj1ohWBpEfwSfQF6t/LOWLfT2Ra2V9qrbYD34onesyPiUOurqq1S+dX2BtYA/XmjY
 ZpiE9G/MkGSFl4xMOz0DwqFKN8af5RpHRdngN0es4i+GB8OvhinC+QiBMMIUpMcRlLKu
 8maQ==
X-Gm-Message-State: AOAM533r8GjfSA1OfEKl6pOYoJRhcZndUMEH9iml8N6+NdOZuLHc4RwV
 NcErghU/FBR560ZWv7sgHq0=
X-Google-Smtp-Source: ABdhPJynNzwW06Z83HdgM5O/p9ptyFduVqmOO9tJkI5PUSZq210WZVoIacqvfNOdvCzyv95vi7647w==
X-Received: by 2002:a5d:508e:: with SMTP id a14mr23936148wrt.92.1625595736687; 
 Tue, 06 Jul 2021 11:22:16 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id r3sm15115908wrz.89.2021.07.06.11.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:16 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:06 -0400
Message-Id: <cover.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
X-Headers-End: 1m0piB-00Cbnu-0b
Subject: [tipc-discussion] [PATCH net-next 0/8] tipc: add PLPMTUD probe and
 GSO offload
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

This patchset is to implement PLPMTUD and GSO for TIPC,
Patch 1-5 are for PLPMTUD while 6-8 are for GSO.

It gets some ideas from SCTP as their similarities like
both are reliable datagram packets and possible to run
over IP(v6)/UDP. But also it does some adjustments for
TIPC.

Xin Long (8):
  tipc: set the mtu for bearer properly for udp media
  tipc: add the constants and variables for plpmtud
  tipc: build probe and its reply in tipc_link_build_proto_msg
  tipc: add probe send and state transition
  tipc: add probe recv and state transition
  tipc: add offload base
  tipc: add software gso
  tipc: add hardware gso

 include/uapi/linux/tipc_config.h |   6 --
 net/tipc/Makefile                |   2 +-
 net/tipc/bearer.c                |  23 ++++-
 net/tipc/core.c                  |   3 +
 net/tipc/link.c                  | 147 +++++++++++++++++++++++++++----
 net/tipc/link.h                  |  29 ++++++
 net/tipc/msg.c                   |   1 +
 net/tipc/msg.h                   |   3 +
 net/tipc/node.c                  |  15 +++-
 net/tipc/offload.c               |  70 +++++++++++++++
 net/tipc/udp_media.c             |  18 ++--
 11 files changed, 287 insertions(+), 30 deletions(-)
 create mode 100644 net/tipc/offload.c

-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
