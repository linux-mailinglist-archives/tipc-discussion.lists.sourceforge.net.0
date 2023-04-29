Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8646F2701
	for <lists+tipc-discussion@lfdr.de>; Sun, 30 Apr 2023 00:41:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pstFP-0001Zd-Dg;
	Sat, 29 Apr 2023 22:40:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pstFO-0001ZX-Lk
 for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diDxLhsgU6EFglhybp+rqfDFsscOUs4tz2zLzJ9SxXo=; b=l16wP/Vpm2NIa5N05kgve/w6Qi
 50h11oIjhwBjqAypkSr3OcOKSMyOZTmbhsnmPKyoqO43X+EhRc3YrpZDuc71AuEhFGpSdu5aeJgjB
 wKl+QOrwUnd4UZ6Pe46a0uPqEQef4upQ/mnEN65xD/MpdDcRzAUS13//dnCpKxyb2Sg8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=diDxLhsgU6EFglhybp+rqfDFsscOUs4tz2zLzJ9SxXo=; b=I
 okfwcojb16nqUinW1ddA/maLpulPApfAOC9ZBXWv/cFJu6UQZnVov2mF/7bKodCT6pRfGHoxmelt3
 fstUFnPwSW/zAjhEJqE1cvcBT9XbzEsCmXL5w+b3U4reic7JKtoh1a4cDxxHHEwcRepZ9HR7IwJZb
 bcXsmPIuYden9nmk=;
Received: from mail-qv1-f46.google.com ([209.85.219.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pstFP-00004r-0P for tipc-discussion@lists.sourceforge.net;
 Sat, 29 Apr 2023 22:40:55 +0000
Received: by mail-qv1-f46.google.com with SMTP id
 6a1803df08f44-5ef50358a7aso6360756d6.2
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 29 Apr 2023 15:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682808049; x=1685400049;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=diDxLhsgU6EFglhybp+rqfDFsscOUs4tz2zLzJ9SxXo=;
 b=Lnjdk5Mn1ZhPcO0wA2/FFmT8YJQEnPD8eEO8OOUaxv0qScxDLOZBL3s2D5kkHioj9q
 /DsbVXcZlZbt2C81CxPyDVfeqBBmHGhYNUioLOm7VRSPmXyJ0ekVWLxKmfn5IgIgVbSY
 X+wtsZuBq9MekJ1mV07MZdI5dxESDJrIGFQtktTCAiP/G7PVqingppA1jLtQexnjO8au
 aEEqSbV9dX9CZa2/ZBs4Im1R+PosLoZBTi2PbiOKoMRGGzSvCamKw9saBqV7zvVasfaB
 SvlfvCmIrrwLpUkZNE1+hC6QQn6+RcEy4IRQov8Rt3PvVL9SyvluSFK3PQcKTzvJA9xl
 Nktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682808049; x=1685400049;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=diDxLhsgU6EFglhybp+rqfDFsscOUs4tz2zLzJ9SxXo=;
 b=V85wbch1YHqlIxaNkbyYhrIrdedueY7GXC0ICrVamQOkyPCzrbxIHgtzejDhoYDQI1
 AXVppfpJq0EemS6p/kiaY+E/zQLBa8c7bNoK7lENvFs7JB6+7dy1N2UNwJeuBB/dx36d
 MQFBbpMcT3gYzLLqztwx+g1Eb2gjWyol4/KFhrE1rWbE7Zq2ph2vgT+8NY1M9WLDsGn8
 DqM0/7XY+8aGtfDw123pN8trdw7OPam+/j610M2G5JMVnj+rR3KNmIigmdu01mxI6XoG
 Khk9KCPdqWCIkQY0DpeD2aVNYPib1fHDygYUuTO5/cG6DeAJygdPc0JipT5sv+geTwUk
 znYQ==
X-Gm-Message-State: AC+VfDweeX0NL75kRnVBuuHdoNKMQ4OdYS9/v34ZklUb8h7I5/HGGGpV
 ffMTzxyQx2iGe4NW8aXHFAw=
X-Google-Smtp-Source: ACHHUZ7HMExoo7A+NkHyx1xtP6vJ0x2rKCMmv7XOOmZLImcBHV8prEEpiAFcIGseAsxc5v1NIYUSiw==
X-Received: by 2002:a05:6214:2247:b0:5ea:d52:7042 with SMTP id
 c7-20020a056214224700b005ea0d527042mr19591713qvc.31.1682808049169; 
 Sat, 29 Apr 2023 15:40:49 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 p12-20020a0ce18c000000b00606322241b4sm6595741qvl.27.2023.04.29.15.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Apr 2023 15:40:48 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sat, 29 Apr 2023 18:40:45 -0400
Message-Id: <cover.1682807958.git.lucien.xin@gmail.com>
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
 the normal env,
 and the fix won't break any application. The 1st patch introduces
 a function to calculate the minimum MTU for the bearer, and the 2nd patch
 fixes the crash with this function. 
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.46 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pstFP-00004r-0P
Subject: [tipc-discussion] [PATCH net 0/2] tipc: fix the mtu update in link
 mtu negotiation
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
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patchset fixes a crash caused by a too small MTU carried in the
activate msg. Note that as such malicious packet does not exist in
the normal env, and the fix won't break any application.

The 1st patch introduces a function to calculate the minimum MTU for
the bearer, and the 2nd patch fixes the crash with this function.

Xin Long (2):
  tipc: add tipc_bearer_min_mtu to calculate min mtu
  tipc: do not update mtu if msg_max is too small

 net/tipc/bearer.c    | 13 +++++++++++++
 net/tipc/bearer.h    |  3 +++
 net/tipc/link.c      |  7 ++++---
 net/tipc/udp_media.c |  5 +++--
 4 files changed, 23 insertions(+), 5 deletions(-)

-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
