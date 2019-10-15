Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1351D8133
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Oct 2019 22:41:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKTdg-0002X1-KV; Tue, 15 Oct 2019 20:41:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mhmd.hamed@gmail.com>) id 1iKTdg-0002Wu-2g
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 20:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ssr61QTnLOgAgmleJOEIxKWw9wTLFqWI/wJcxXxbugQ=; b=DqM6W1EsgMDVpIxQaDt9jL0Mm5
 8G1RunUTR/0KxZkA7jPlytjDDJc9UlknNGeu70M76UnYTZUB4BaIQPucDRL9XCWC4+uGGSD/atJzt
 8q7TCB50dp+gPz7+l+JqF77uxPxhaGu2dRQhUyLs2gBV0xYDGClcaJRd1BRpG3a4DbDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ssr61QTnLOgAgmleJOEIxKWw9wTLFqWI/wJcxXxbugQ=; b=S
 +0dD+pU3oEaLOYCh1OyQh3iVZVuf1P0jE4idzzBvY77avb0fJmTY18G8OJ/FkR8iMdQ793rVeGl+6
 03hdD6lNUNmOfEzJnBppHy5qgLOW++xgxGtBvKyf0DSymAePfBugXeWhI6AjZZeodeXtWBZcQgihX
 VH+kdStKODYKwse0=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKTde-00AYGT-QI
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 20:41:52 +0000
Received: by mail-lf1-f49.google.com with SMTP id r2so15526955lfn.8
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 15 Oct 2019 13:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Ssr61QTnLOgAgmleJOEIxKWw9wTLFqWI/wJcxXxbugQ=;
 b=VSA/1d323KtJs43xMtkKdmn+E4O6kmP9vCyH00NPSwkU0K5H1K0j94+QvEp6qOmcJ+
 5RCd6dljrf7/S9kdIq8MuCEzazk4DbzYpt5Wlu5zz9LkSV0695toch+QcF41aVqYnJgJ
 KpR0iB+aauIlXHyDSTDGt4vjHO9kbWVNJxaCKKtzn0/SPDT8MOwehZcdK/b5jgtUt5Er
 mMlVsRg5TFHwLiIw5o+6tFLVzs3OHNq+fJTlHnU7ypgO3ypIUbrJWXtBVYBLgYSHyN1f
 YpdFpRGyql/5rDTzoZYrTuLTQzSiKRDgs25xfSGQJg7M88mxsdyVnlo7QDsKMU1tTbjf
 AYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Ssr61QTnLOgAgmleJOEIxKWw9wTLFqWI/wJcxXxbugQ=;
 b=ZuiOdLzuSXLEjzLrSwoGxASS9kzNZ061hf643qwfrF/X70yAKQG1BA4cfhl+24Tzlj
 M2g2Z++mdZF47r3MU6PN0+KBcA0wpRZ0FYfMYRhwh3fjsT82Ug17dEAzymh1h2OKiPIQ
 /nGurctR0P7ZW+/j2iI0Iq4fi1xsGK6A1LGSM7k+gkNZlJuCj2QDEYDRCsMCI2Ue+1Dx
 YU4Z31AxVmhPgQ3FARloxWdnsla9Mtpq2g1DXa0wlqHHEUuf4S/ZP64jDgcqAX2DUyyY
 Nh+sbUAPNQlypnFvIz3pThgPBpw7rCf3KBEC/jeGm45eQM4AzZbGhMTKfxnToBMTkEaK
 ZTrQ==
X-Gm-Message-State: APjAAAUtO7hObP+eA4zlzGLLZmiZgI1y4u7q+ivRFmKrvvGjFU7P2QAK
 /lgdGpDaCT8amJv8lahnP1JB331vOUcIg1b1l/9lSzyfdlw=
X-Google-Smtp-Source: APXvYqx9pXgy14Pzm3rSOj4fHTTYzvEEV+ljR50pAIYCWFmtTKK/1kwBGCp9CwqTggbiaXAHtAHnR7BcxoSsbfB+L4c=
X-Received: by 2002:ac2:4550:: with SMTP id j16mr4774026lfm.126.1571172103151; 
 Tue, 15 Oct 2019 13:41:43 -0700 (PDT)
MIME-Version: 1.0
From: Mohamed Hamed El-Gamal <mhmd.hamed@gmail.com>
Date: Tue, 15 Oct 2019 22:41:33 +0200
Message-ID: <CAFUf6vf4UM4CemQUr2g1p6O0ybeNB+exdzOt=_eCG8a+JAUW9g@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mhmd.hamed[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 HTML_IMAGE_ONLY_16     BODY: HTML: images with 1200-1600 bytes of words
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
 0.3 HTML_SHORT_LINK_IMG_2  HTML is very short with a linked image
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1iKTde-00AYGT-QI
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC Contianer
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

Hello,

I would like to ask you regarding the optimum way to run TIPC over
containerized workload
Will it be using MACVLAN interfaces for docker and K8s ?

Note: We are using also Mulit-netowkring


It would be great if there is any supportive documentations


Thanks a lot
Best Regards




<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
Garanti
sans virus. www.avast.com
<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
<#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
