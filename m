Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C966087C
	for <lists+tipc-discussion@lfdr.de>; Fri,  6 Jan 2023 21:51:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pDtgg-0005xU-Af;
	Fri, 06 Jan 2023 20:51:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <abyssinica@gmail.com>) id 1pDtgc-0005xJ-3w
 for tipc-discussion@lists.sourceforge.net;
 Fri, 06 Jan 2023 20:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ez2CITByHyZco9Vp2gBHr0ukaFr5CsK8tdtC7H9fHyI=; b=A6xUIICDnStjjVmmnKUACYD6hy
 j29+cAWHWWTAXda9U2CGTCLV4RRgllGgaW06EUZAP+Vm5Jbv0v+y/zhj0d2VQxSw2Ff6JVbEiib5M
 Z85onUDlNUiNpr4dvueK1ZTP0inyODsrNz7BBSnQKV/0t59q5KxZv0ZI31TWuebejr7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ez2CITByHyZco9Vp2gBHr0ukaFr5CsK8tdtC7H9fHyI=; b=X
 Ub7GwK+k+Ywqxoeejkw2rTanHUSM4uQUK6GkzprGHEbKpyPXqQSZYBNnOPOP0xczEDJpr8xYGDKG7
 vmmgh6b8Wci5H2uw7zZaHM5vz6lzvnFeybbmRkOUyNTIYCx9X3QZn1haMH1wa8tZeZLO8o/h8eIX2
 536/FPR9dsmvF+HI=;
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pDtgW-0000yy-W8 for tipc-discussion@lists.sourceforge.net;
 Fri, 06 Jan 2023 20:51:33 +0000
Received: by mail-io1-f47.google.com with SMTP id y4so1395834iof.0
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 06 Jan 2023 12:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ez2CITByHyZco9Vp2gBHr0ukaFr5CsK8tdtC7H9fHyI=;
 b=egTXYWxUEJg2i9iryG3bUQvTiit3Shz0+ifZBEiil8OMZ9toV9InJ6vEPUEX4GEYcT
 vLbaZgwbEVEuwjpztyKI/zAXoQjJW9d10JOLp/2ei2A/hsNfYj6LVV7vIYXjFjYh8L1C
 hyY0xjMi+nccx8PRedjoFu1lbfkl+eZWowq5L7hMnl5ttkEdpdyV+nZrKzwt9gvdJO6e
 9zU63TiVFZ5W/D42X8cg7aW66f/wU59PDVhhO1Z6LSA4nLKeW/WHALaO7bHB/O2bSz8E
 NRBd0ELgGl7dRm/kEYPtvbDnigt+ky8Z9/VmB3lyhgNI3L+dxMoE/rmZ0fgcga5nsG3b
 NuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ez2CITByHyZco9Vp2gBHr0ukaFr5CsK8tdtC7H9fHyI=;
 b=t4WpEREzWjyesgk8qzJSurqtTdjoe2LY+ajSPqIr4hMe2JtwKJmYwexc7wp/q63mR7
 dLyX+XUOOP65Z0i7ZereKcORgib1oRzC1Wju70YUvAR+BGKhqj+JKu3iVamVDjKjwNH7
 1Tl0bA0dMHMv/wxGiPu5dMBIPdtMZF8XTYB6TLc47h+EukzAeRNKaTzSNuMEUb3OW9Y5
 FXwwJ5Go/fnt5XrcmtuiGk5iPeNYmcxJyURVEpRfsCV2EFlcWD5rKEbID1v1+0fIO97o
 6YGg/92gPZSAMOAD97tYi16lCd93tKk6yef7lT+LuZDTJOpG6jQyjGhC2dndBce7V3p7
 NGxg==
X-Gm-Message-State: AFqh2kouB8rCyi8vk4CPshgmPed7Hq7El4KkqklydQNb7mZ5TXX6yCvs
 eTTWH99kbwu0eQgDwQ09IRJ2f46iTSv8j+LYrlp5xcye
X-Google-Smtp-Source: AMrXdXtHFH8gqMDzJG8Yoj09oaVKas6W9F+JFt5DRqAAlyYLa/GQn53hd0MYqqdnphi2z3abHRZ0QbNq8SN2/OVXeqw=
X-Received: by 2002:a05:6638:144b:b0:39e:5dc6:ebb2 with SMTP id
 l11-20020a056638144b00b0039e5dc6ebb2mr427348jad.71.1673038281742; Fri, 06 Jan
 2023 12:51:21 -0800 (PST)
MIME-Version: 1.0
From: Asebot Fasil Abebe <abyssinica@gmail.com>
Date: Fri, 6 Jan 2023 15:51:10 -0500
Message-ID: <CALiWOen2U-RYnPV2187uo9+7GjY5wS_nR43kCXDgJzycU9vT9g@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi folks, I'd like to understand the expected behavior when
 a member of a group is slow to pick up a group multicast/broadcast message.
 From what I'm observing on my testing, it seem to slow down the whole mess
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [abyssinica[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.47 listed in list.dnswl.org]
X-Headers-End: 1pDtgW-0000yy-W8
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] A slow message receiver member slowing the group
 multicasting for all members
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

Hi folks,

I'd like to understand the expected behavior when a member of a group is
slow to pick up a group multicast/broadcast message. From what I'm
observing on my testing, it seem to slow down the whole messaging bus.
Please confirm and advise on a workaround if any.

Thanks,

Asebot

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
