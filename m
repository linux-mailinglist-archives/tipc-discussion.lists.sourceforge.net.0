Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AFD245C94
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 08:37:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7Ym0-0004Qu-Pd; Mon, 17 Aug 2020 06:37:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k7Ym0-0004Qm-03
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 06:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZGAxLhTODGHqxXYJjtQOn9tVpAUfPOZu1UQ9wodOgrI=; b=XAhQOMiQp882dxWP6inmkvDXC3
 C2H2wGWDCBuO0p+sbczWlVd66iBVyRPxV+YQuFzup/ulK+HG6wi/GeXVQ4ODjoYLP8FktVlmsVQYJ
 R8wekgDC9MvV9jdjlzFovyQKvw27htEqkOzGZUkXG+xKWShHKvoMrS6nE50aD1R6ptdQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZGAxLhTODGHqxXYJjtQOn9tVpAUfPOZu1UQ9wodOgrI=; b=CRvEb7Lz/B7C88tU+B3UDkvogB
 VcGy0HqdpfjqNmo3rvAiZE0yYhrXaXSAk9w7Pg0ZzrpqElIKkzVlIhcEniu3XVetjRtjW0qcUuHRr
 qEPFASthAvOWxADkcu1A8ahrhcxzxm9MisD9PWQuQbte7aVI7SFQXzq5sMG+dmIu031M=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7Yly-009zii-Po
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 06:37:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id c19so12545924wmd.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 Aug 2020 23:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZGAxLhTODGHqxXYJjtQOn9tVpAUfPOZu1UQ9wodOgrI=;
 b=Jau8UHxbCZTNkgbfTbkB6VmFnXMVrXgTXnGLacRYKA0Q8FBXOMLhp6W6XqZ9Ce853F
 q0UwWh4tKkxIQ40y+5AmQwPKB++v2Rx/ek5G/SXIw3mwVSk6ViiyeMWssBMy8FHsce1W
 4Pg6ThKVposNcwXOGISf0KJ1ceEPAeGzIBxCXxId/XLngLgE5/B4QRrVhL73e00UqKlQ
 DeQv1lCI5hTSi0yoe0uJBo/SrkF8FoeQMRrPUUnDKs8mrZvtWSzEA0tP5Cv5eqU3yJKU
 pjGrPs43TKHDbB12OZNaPiZrzPpbzK7co4Ea1z2vWc0r31ogPKrvVJDCCszSeOX/o1fK
 P6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZGAxLhTODGHqxXYJjtQOn9tVpAUfPOZu1UQ9wodOgrI=;
 b=Jt5CvC0Qwy0dwne3UH9/KL2yC/AAz243zT5D+ko4b4Z0l4DT/n8dsEFCxM0vJVW5JQ
 l0C+Z0LWpEVXgrxwzFdJmd2+6cYimSak9A5uRI5DwZoBtJBQlHw0OHlk9eye1OrOJl2A
 xNDzyCwRMpmAw1mVc0D4b2424lLBlPdSoR/5zv3sruYxJ2zVfcmqezLxZFViJ0Gx1ieB
 oo6c8QYg2+lIo7YAItQNfG0SGYz9ab4aHvihJdgRlnttr3ByUCIXoS99Q0DfBaASI3UZ
 PH1dLJOi+MSQUXq72YnEQTO+zyBhVkNchzO31tzvovnNg5kamja7RC1ZBUCQdVfms+Qy
 AaRQ==
X-Gm-Message-State: AOAM531itOttlvpq2xixuVG+78B4+hFnF+DDvJXN69fEADa8bRSOQEMF
 N7k8SX6kYpyTPyNjMASthfQIv54mODRXslfbAm4=
X-Google-Smtp-Source: ABdhPJxgLhuDH141ArW220LANPYkIrsHDIcUJj1L8l8bTLKgCHir90VmijbBByW0UBI+KoEcK3XqFSkTf29nfmvteMs=
X-Received: by 2002:a7b:cc8e:: with SMTP id p14mr12969602wma.111.1597646241374; 
 Sun, 16 Aug 2020 23:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <d20778039a791b9721bb449d493836edb742d1dc.1597570323.git.lucien.xin@gmail.com>
 <CAM_iQpU7iCjAZ3w4cnzZx1iBpUySzP-d+RDwaoAsqTaDBiVMVQ@mail.gmail.com>
In-Reply-To: <CAM_iQpU7iCjAZ3w4cnzZx1iBpUySzP-d+RDwaoAsqTaDBiVMVQ@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 17 Aug 2020 14:49:50 +0800
Message-ID: <CADvbK_fL=gkc_RFzjsFF0dq+7N1QGwsvzbzpP9e4PzyF7vsO-g@mail.gmail.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
X-Headers-End: 1k7Yly-009zii-Po
Subject: Re: [tipc-discussion] [PATCH net] tipc: not enable tipc when ipv6
 works as a module
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
Cc: network dev <netdev@vger.kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 tipc-discussion@lists.sourceforge.net, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Mon, Aug 17, 2020 at 2:29 AM Cong Wang <xiyou.wangcong@gmail.com> wrote:
>
> On Sun, Aug 16, 2020 at 4:54 AM Xin Long <lucien.xin@gmail.com> wrote:
> >
> > When using ipv6_dev_find() in one module, it requires ipv6 not to
> > work as a module. Otherwise, this error occurs in build:
> >
> >   undefined reference to `ipv6_dev_find'.
> >
> > So fix it by adding "depends on IPV6 || IPV6=n" to tipc/Kconfig,
> > as it does in sctp/Kconfig.
>
> Or put it into struct ipv6_stub?
Hi Cong,

That could be one way. We may do it when this new function becomes more common.
By now, I think it's okay to make TIPC depend on IPV6 || IPV6=n.

Thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
